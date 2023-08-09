package team.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import team.model.Team;
import team.service.TeamService;
import team.service.TeamServiceImpl;

/**
 * Servlet implementation class MyTeamInfoController
 */
@WebServlet("/MyTeamInfoController")
public class MyTeamInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public MyTeamInfoController() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		/* 해당 컨트롤러는 session에서 id값을 받아와 나의 가입한 팀의 정보를 보여준다. */
		HttpSession session = request.getSession();
		TeamService service = new TeamServiceImpl();
		String t_name = (String) session.getAttribute("t_name");
		String id = (String)session.getAttribute("id");
		System.out.println("아이디: " + (String)session.getAttribute("id") + "팀 이름: " + (String)session.getAttribute("t_name"));
		
		if(id == null) {
			response.sendRedirect(request.getContextPath() + "/view/player/login.jsp");
		} else {
			
			Team t = service.teamInfo(t_name);
			request.setAttribute("t", t);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/team/teamInfo.jsp");
			dispatcher.forward(request, response);
		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
