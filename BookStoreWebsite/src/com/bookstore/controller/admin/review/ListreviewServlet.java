package com.bookstore.controller.admin.review;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookstore.service.ReviewServices;

@WebServlet("/admin/list_review")
public class ListreviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ListreviewServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ReviewServices reviewServices = new ReviewServices(request, response);
		reviewServices.listAllReview();
	}

}
