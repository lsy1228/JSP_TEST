package sec_exam02;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebInitParam;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

// 아래와 같이 어노테이션을 적용하기 위해서는 web.xml에 기술되어 있는 부분 주석 처리 해야함 
// 주석 처리를 해야 아래 코드가 적용됨, 어노테이션을 사용해서 직접 초기화 파라메터 값 지정 
/*@WebServlet(urlPatterns = {"/IP"},
			initParams = {
					@WebInitParam(name = "id", value = "admin"),
					@WebInitParam(name = "pw", value = "1234"),
					@WebInitParam(name = "path", value = "C://Temp")
			})*/

// 초기화 파라메터를 사용하는 곳은 보통 관리자 계정을 많이 사용, web.xml 파일에 기술하는 것이 바람직 
public class initParam extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public initParam() {
        super();
         }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doGet 호출");
		String id = this.getInitParameter("id");
		String pw = this.getInitParameter("pw");
		String path = this.getInitParameter("path");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		out.println("<html><head></head><body>");
		out.println("아이디 : " + id + "<br/>");
		out.println("비밀번호 : " + pw + "<br/>");
		out.println("경로 : " + path + "<br/>");
		out.println("</body></html>");
		out.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}
