package com.bookstore.controller.admin.book;

import com.bookstore.controller.BaseServlet;
import com.bookstore.service.BookServices;

import java.io.IOException;
import java.text.ParseException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/admin/create_book")
@MultipartConfig (
		fileSizeThreshold = 1024 * 10, //10kb
		maxFileSize = 1024 * 300, //300kb
		maxRequestSize = 1024 * 1024 //1mb
)
public class CreateBookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CreateBookServlet() {
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BookServices bookServices = new BookServices(request, response);
		try {
			bookServices.createBook();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
