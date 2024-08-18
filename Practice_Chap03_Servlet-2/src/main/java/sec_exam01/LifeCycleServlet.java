package sec_exam01;

import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class LifeCycleServlet
 */
public class LifeCycleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	// 생성자 
    public LifeCycleServlet() {
    	System.out.println("생성자 호출");
    }
    
    // init() ctrl+space바를 눌러서 직접 입력하여 코딩하자 
    // 최초 한번만 실행됨 
    @Override
	public void init() throws ServletException {
		System.out.println("init() 호출");
	}

	// 실행되었을 때, 서블릿 객체가 메모리에 로딩되고 계속 재사용됨 
    // 새로고침을 하면 doGet()가 계속 호출되는 것을 볼 수 있음 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet 호출");
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost 호출");
	}
	
	// doGet(), doPost()가 없다면 service()가 호출이 되고,
	// 세가지 메서드가 다 존재하여도 service()가 호출됨 
	// service()는 get, post 방식 중 어떤 방식으로 호출되었는지 알 길이 없음
	// 그래서 보통 doGet(), doPost() 방식을 사용 
	@Override
	public void service(ServletRequest arg0, ServletResponse arg1) throws ServletException, IOException {
		System.out.println("service() 호출");
	}
	
	// 서버를 중지시키면 destroy()가 호출되는 것을 볼 수 있음 
	@Override
	public void destroy() {
		System.out.println("destroy() 호출");
	}
	
	// 오버라이딩의 개념이 아님, 직접 메서드를 만들어주는 것 
	// 선처리 부분에 해당됨 
	// init 메서드가 호출되기 전에 먼저 실행 
	// @PostConstruct 어노테이션이 컴파일러한테 따로 지시 
//	@PostConstruct 
	private void initPostConstructor() {
		System.out.println("initPostConstructor() 선처리");
	}
	
	// 오버라이딩의 개념이 아님, 직접 메서드를 만들어주는 것 
	// 후처리 부분에 해당됨 
	// destroy 메서드가 호출된 후에 실행 
	// @PreDestroy 어노테이션이 컴파일러한테 따로 지시 
//	@PreDestroy
	private void destroyPredestroy() {
		System.out.println("destroyPredestroy() 후처리");
	}
	
	

}
