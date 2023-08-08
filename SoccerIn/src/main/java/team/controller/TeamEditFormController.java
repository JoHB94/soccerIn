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
 * Servlet implementation class TeamEditFormController
 */
@WebServlet("/TeamEditFormController")
public class TeamEditFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeamEditFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*해당 컨트롤러는 teamInfo.jsp에서 수정 버튼을 눌렀을 때 t_name을 받아옵니다.
	 *team테이블의 t_owner = session.id 라면 팀정보를 수정할 수 있도록 합니다.*/
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String t_name = request.getParameter("t_name");
		TeamService service = new TeamServiceImpl();
		String t_owner = service.getOwner(t_name);
		Team t = service.teamInfo(id);
		
		if(id.equals(t_owner)) {
			/*로그인 id가 t_owner의 id일 경우*/
			request.setAttribute("t", t);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/team/teamEdit.jsp");
			dispatcher.forward(request, response);
			
		} else {
			request.setAttribute("NoOwner", "구단주만 수정할 수 있습니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/team/teamInfo.jsp");
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
