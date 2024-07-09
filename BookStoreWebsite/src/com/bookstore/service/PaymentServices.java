package com.bookstore.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.soap.Detail;

import com.bookstore.entity.Book;
import com.bookstore.entity.BookOrder;
import com.bookstore.entity.Customer;
import com.bookstore.entity.OrderDetail;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Details;
import com.paypal.api.payments.Item;
import com.paypal.api.payments.ItemList;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.ShippingAddress;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;

public class PaymentServices {
//	DEMO KEYS
	private static final String CLIENT_ID = "AW_2iR8URawVlMYXSBRc-kEV3qNnQwHHQq1IT8FBepJbgdUtZ-PzvMz-kaYU7lg3XWDxe9Cc-Sovxtn8";
	private static final String CLIENT_SECRET = "EPeYPcabOrFoxKQ5lFJN7yiCyRFSPkqbboI6Cwt2Jqu-cePG5sBEWIFEP0xZoKFZrTiisKNFut_Q7d5J";
	private String mode = "sandbox";
	
//	LIVE KEYS
//	private static final String CLIENT_ID = "AcAl1zOegiMJU2gyherWzv5bDkxWbB4n2pdx-sjiUOXOdLn9zPv854JqRS3u_JGE2O0UeYhvbM8HECwu";
//	private static final String CLIENT_SECRET = "EMXI1ZjI0BfuCH9E6RodC4NULUFaBDhiB6BvO_mS__iLWIxfjxY9YswxqoWUkCIYphroGJxGxqKUFyjM";
//	private String mode = "live";

	private HttpServletRequest request;
	private HttpServletResponse response;

	public PaymentServices(HttpServletRequest request, HttpServletResponse response) {
		super();
		this.request = request;
		this.response = response;
	}

	public void authorizePayment(BookOrder order) throws ServletException, IOException {
		Payer payer = getPayerInformation(order);
		RedirectUrls redirectUrls = getRedirectURLs();


		// request payment
		List<Transaction> transactions = getTransactionInformation(order);
		
		Payment requestPayment = new Payment();
		requestPayment.setPayer(payer)
		.setRedirectUrls(redirectUrls)
		.setIntent("authorize")
		.setTransactions(transactions);
		
		System.out.println("====== REQUEST PAYMENT: ======");
		System.out.println(requestPayment);
		
		APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, mode);
		try {
			Payment authorizedPayment = requestPayment.create(apiContext);
			System.out.println("====== AUTHORIZE PAYMENT: ======");
			System.out.println(authorizedPayment);
			
			String approvalURL = getApprovalURL(authorizedPayment);
			response.sendRedirect(approvalURL);
			
		} catch (PayPalRESTException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			throw new ServletException("Error in authorizing error.");
		}

		// get approval link

		// redirect to Paypal's payment page
	}
	
	 private String getApprovalURL(Payment authorizedPayment) {
		String approvalURL = null;
		
		List<Links> links = authorizedPayment.getLinks();
		
		for (Links link : links) {
			if (link.getRel().equalsIgnoreCase("approval_url")) {
				approvalURL = link.getHref();
				break;
			}
		}
		 
		 
		return approvalURL;
	}

	private List<Transaction> getTransactionInformation(BookOrder order) {
		 Transaction transaction = new Transaction();
		 transaction.setDescription("Boook ordered on Evergreen Books");
		 Amount amount = getAmountDetails(order);
		 transaction.setAmount(amount);
		 
		 ItemList itemList = new ItemList();
		 ShippingAddress shippingAddress = getRecipientInformation(order);
		 itemList.setShippingAddress(shippingAddress);
		 
		 List<Item> paypalItems = new ArrayList<>();
		 Iterator<OrderDetail> iterator = order.getOrderDetails().iterator();
		 
		 while (iterator.hasNext()) {
			OrderDetail orderDetail = iterator.next();
			Book book = orderDetail.getBook();
			Integer quantity = orderDetail.getQuantity();
			
			Item paypalItem = new Item();
			paypalItem.setCurrency("USD")
			.setName(book.getTitle())
			.setQuantity(String.valueOf(quantity))
			.setPrice(String.format("%.2f",book.getPrice()));
			
			paypalItems.add(paypalItem);
		}
		 
		 itemList.setItems(paypalItems);
		 transaction.setItemList(itemList);
		 
		 List<Transaction> listTrasnaction = new ArrayList<>();
		 listTrasnaction.add(transaction);
		 
		 return listTrasnaction;
	 }
	
	private ShippingAddress getRecipientInformation(BookOrder order) {
		ShippingAddress shippingAddress = new ShippingAddress();
		
		String recipientName = order.getFirstname()+" "+order.getLastname();
		shippingAddress.setRecipientName(recipientName)
		.setPhone(order.getPhone())
		.setLine1(order.getAddressLine1())
		.setLine2(order.getAddressLine2())
		.setCity(order.getCity())
		.setState(order.getState())
		.setCountryCode(order.getCountry())
		.setPostalCode(order.getZipcode());
		
		return shippingAddress;
	}

	private Payer getPayerInformation(BookOrder order) {
		// get payer information
		Payer payer = new Payer();
		payer.setPaymentMethod("paypal");

		Customer customer = order.getCustomer();

		PayerInfo payerInfo = new PayerInfo();
		payerInfo.setFirstName(customer.getFirstname());
		payerInfo.setLastName(customer.getLastname());
		payerInfo.setEmail(customer.getEmail());
		payer.setPayerInfo(payerInfo);

		return payer;
	}

	private RedirectUrls getRedirectURLs() {
	    // Get the base URL from the request
	    String requestURL = request.getRequestURL().toString();
	    String requestURI = request.getRequestURI();
	    String baseURL = requestURL.replace(requestURI, "").concat(request.getContextPath());

	    // Create and set redirect URLs
	    RedirectUrls redirectUrls = new RedirectUrls();
	    String cancelUrl = baseURL.concat("/view_cart");
	    String returnUrl = baseURL.concat("/review_payment");

	    redirectUrls.setCancelUrl(cancelUrl);
	    redirectUrls.setReturnUrl(returnUrl);

	    System.out.println("Return URL: " + returnUrl);
	    System.out.println("Cancel URL: " + cancelUrl);

	    return redirectUrls;
	}

	private Amount getAmountDetails(BookOrder order) {
		// get amount details
		Details details = new Details();
		details.setShipping(String.format("%.2f",order.getShippinFee()));
		details.setTax(String.format("%.2f",order.getTax()));
		details.setSubtotal(String.format("%.2f",order.getSubtotal()));

		Amount amount = new Amount();
		amount.setCurrency("USD");
		amount.setDetails(details);
		amount.setTotal(String.format("%.2f",order.getTotal()));
		
		return amount;
	}

	public void reviewPayment() throws ServletException {
        String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");

        if (paymentId == null || payerId == null) {
            throw new ServletException("Error in displaying payment review: missing paymentId or payerId.");
        }

        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, mode);

        try {
            Payment payment = Payment.get(apiContext, paymentId);
            PayerInfo payerInfo = payment.getPayer().getPayerInfo();
            Transaction transaction = payment.getTransactions().get(0);
            ShippingAddress shippingAddress = transaction.getItemList().getShippingAddress();

            request.setAttribute("payer", payerInfo);
            request.setAttribute("recipient", shippingAddress);
            request.setAttribute("transaction", transaction);

            String reviewPage = "frontend/review_payment.jsp?paymentId="+ paymentId+ "&PayerID="+ payerId;
            request.getRequestDispatcher(reviewPage).forward(request, response);

        } catch (PayPalRESTException e) {
            e.printStackTrace();
            throw new ServletException("Error in payment details from PayPal");
        } catch (IOException e) {
            e.printStackTrace();
            throw new ServletException("Error in forwarding request");
        }
    }

	public Payment executePayment() throws PayPalRESTException {
		String paymentId = request.getParameter("paymentId");
        String payerId = request.getParameter("PayerID");
        
        PaymentExecution paymentExecution = new PaymentExecution();
        paymentExecution.setPayerId(payerId);
        
        Payment payment = new Payment().setId(paymentId);
        
        APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, mode);
        
        return payment.execute(apiContext, paymentExecution);
	}
}