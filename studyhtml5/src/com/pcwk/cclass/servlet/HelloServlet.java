package com.pcwk.cclass.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class HelloServlet extends HttpServlet {
	
	public HelloServlet() {
		System.out.println("---------------------");
		System.out.println("-HelloServlet()-");
		System.out.println("---------------------");
	}
	
	protected void doGet(HttpServletRequest req, HttpServletResponse res) 
	throws ServletException, IOException{
		res.setContentType("text/html; charset=UTF-8");
		// out 객체
		PrintWriter out = res.getWriter();
		out.println(" ");
		out.println(" <!DOCTYPE html> ");
		out.println(" <html> ");
		out.println(" <head> ");
		out.println(" <meta charset='UTF-8'> ");
		out.println(" <title>Insert title here</title> ");
		out.println(" </head> ");
		out.println(" <body> ");
		out.println("   <h2>Hello,world!</h2> ");
		out.println("   <hr/> ");
		out.println("         ");
		out.println(" </body> ");
		out.println(" </html> ");
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse res) 
			throws ServletException, IOException{
		System.out.println("-------------------------------");
		System.out.println("-doPost()-");
		System.out.println("-------------------------------");
		doGet(req, res);
		
	}
	
}
