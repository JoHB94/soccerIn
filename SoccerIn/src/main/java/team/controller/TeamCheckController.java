package team.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team.service.TeamService;
import team.service.TeamServiceImpl;

/**
 * Servlet implementation class TeamCrerateController
 */
@WebServlet("/TeamCrerateController")
public class TeamCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeamCheckController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	/*해당 컨트롤러는 session의 아이디와 t_name값이 없으면 팀을 생성할 수 있다.*/
		HttpSession session = request.getSession();
		String t_name = (String)session.getAttribute("t_name");
		if(t_name == null) {
			/*소속된 팀이 없으면 create창으로*/
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/team/teamCreate.jsp");
			dispatcher.forward(request, response);
		} else {
			/*소속된 팀이 있으면 홈으로*/
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/home/home.jsp");
			dispatcher.forward(request, response);
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
