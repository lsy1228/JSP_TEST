package sec02_exam;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

public class NowTime extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public NowTime() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 문자셋 지정 
		response.setContentType("text/html; charset=utf-8");
		
		// 서블릿은 JSP 표준 이전에 등장한 표준, 물론 자바 웹어플리케이션 개발을 목적으로 
		// 지금까지 살펴본 web.xml 매핑과 어노테이션 매핑방법이 있는데
		// 어노테이션 매핑을 하게 되면 프로그램 개발을 완성한 후 릴리즈를 하면 수정시 자바 소스파일을 
		// 수정 해야되고 아울러 재컴파일을 계속 해야함 -> 유지보수가 그렇게 용이한 편이 아님 
		// 그래서 web.xml을 이용해서 매핑하는 방법이 낫긴 하지만, 경우에 따라서 판단하여 각각 다르게 구현해야함 
		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<HEAD><TITLE>현재시간</TITLE></HEAD>");
		out.println("<BODY>");
		out.println("지금 시간은");
		out.println(new Date());
		out.println("입니다");
		out.println("</BODY>");
		out.println("</HTML>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
