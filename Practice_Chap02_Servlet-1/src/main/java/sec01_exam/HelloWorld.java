package sec01_exam;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
// @WebServlet 어노테이션보다 web.xml에서 지정한 매핑코드가 우선수위가 훨씬 높음
//@WebServlet("/HWorld")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public HelloWorld() {
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello World");
		System.out.println("do get()");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("Hello World");
		System.out.println("do post()");
	}
	// 결론
//	1. jsp 파일 : HTML 파일안에 JSP 코드를 넣는 것 
//	2. servlet 파일 : 자바파일이고, 반드시 매핑을 해서 사용해야 함 

}
