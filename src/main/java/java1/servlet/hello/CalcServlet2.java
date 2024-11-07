package java1.servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/calc2.do")
public class CalcServlet2 extends HttpServlet {
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String ageValue=request.getParameter("age");
		 int result= Integer.parseInt(ageValue)+10;
		 
		 request.setAttribute("resultData", result);
		 
		 RequestDispatcher dispatcher=request.getRequestDispatcher("calc2Result.jsp");
		 dispatcher.forward(request, response);

	}

}