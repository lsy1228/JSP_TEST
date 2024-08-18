package sec03_exam;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class GetorPostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public GetorPostServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 메서드 호출됨");
		response.setContentType("test/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.print("안녕하세요");
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>doGet방식입니다.</h1>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 메서드 호출됨");
		response.setContentType("test/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.print("안녕하세요");
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h1>doPost방식입니다.</h1>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

}
