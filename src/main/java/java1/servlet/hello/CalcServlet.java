package java1.servlet.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/calc.do")
public class CalcServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("get 방식으로");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("post 방식으로");
		String age = request.getParameter("age");
		int result = Integer.parseInt(age)+10;
		response.setContentType("text/html; charset=UTF-8");
		
		System.out.println(result);
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>계산결과</title></head>");
		out.println("<body>");
		out.println("<h1>서블릿으로 만든 페이지 </h1>");
		out.println("<h1> 10년 후 나이 :" + result + "입니다.</h1>");
		out.println("<hr>");
		out.println("</body></html>");
		
	}

}