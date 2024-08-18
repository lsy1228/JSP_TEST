package sec_exam04;

import jakarta.servlet.ServletContextEvent;
import jakarta.servlet.ServletContextListener;
import jakarta.servlet.annotation.WebListener;

@WebListener
public class ServletListener implements ServletContextListener {

	// 아래 2개의 콜백 메서드는 다른 웹어플리케이션(타 프로젝트)이 실행될 떄와 종료될 때에 
	// 같이 실행되기 떄문에 아래와 같은 코드를 보여주기 싫다면 주석 처리 하면 됨 
	
	/* 톰캣 서버가 중지될 때 자동 호출 */
	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
		System.out.println("contextDestroyed 호출");
	}
	
	/* 톰캣 서버가 시작될 떄 자동 호출 */
	@Override
	public void contextInitialized(ServletContextEvent arg0) {
		System.out.println("contextInitialized 호출");
	}
	
//	서블릿의 실행 순서 (리스너 포함)
//	1. contextInitialized() 호출 
//	2. 생성자 호출 
//	3. initPostConstructor() 선처리 
//	4. init() 호출 
//	5. doGet(), doPost() 호출 
//	6. contextDestroyed() 호출 
//	7. destroy() 호출 
//	8. destroyPredestroy() 호출
}
