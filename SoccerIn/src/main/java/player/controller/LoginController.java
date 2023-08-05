package player.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import player.model.Player;
import player.service.PlayerService;
import player.service.PlayerServiceImpl;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*해당 컨트롤러는 로그인을 관리합니다.*/
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		PlayerService service = new PlayerServiceImpl();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		Player p = service.login(id, pwd);
		
		System.out.println("로그인 결과??"+p);
		
		if(p == null) {
			request.setAttribute("message", "조건에 해당하는 데이터 없음");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/player/login.jsp");
			dispatcher.forward(request, response);
		} else {
			session.setAttribute("id", id);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/HomeController");
			dispatcher.forward(request, response);
			System.out.println("forward to homeCon");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
