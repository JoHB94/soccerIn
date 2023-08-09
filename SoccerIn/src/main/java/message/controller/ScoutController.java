
package message.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import message.model.Message;
import message.service.MsgService;
import message.service.MsgServiceImpl;
import team.service.TeamService;
import team.service.TeamServiceImpl;

/**
 * Servlet implementation class ScoutControllerr
 */
@WebServlet("/ScoutController")
public class ScoutController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ScoutController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*해당 컨트롤러는 playerInfo.jsp에서 스카웃제의버튼을 눌렀을 경우 해당 선수의 id를 request객체에 받아옵니다.
	 *받아온 선수id로 t_name을 조회하고 t_name으로 owner를 조회합니다.
	 *현재 세션의 loginId와 owner를 비교합니다. 같을 경우 스카웃 제의를 할 수 있습니다.*/
		HttpSession session = request.getSession();
		
		TeamService t_service = new TeamServiceImpl();
		MsgService m_service = new MsgServiceImpl();
		
		String loginId = (String)session.getAttribute("id");
		String playerId = request.getParameter("id");
		String player_t_name = t_service.checkSign(playerId);
		String scouter_t_name = t_service.checkSign(loginId);
		String t_owner = t_service.getOwner(scouter_t_name);
		
		/*player_t_name이 비어있고, t_owner = loginId 이어야지 스카웃이 가능하다.*/
		if(player_t_name == null) {
			if(t_owner.equals(loginId)) {
				Message m = new Message(0,playerId,scouter_t_name, 0, 0);
				m_service.doScout(m);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/PlayerListController");
				dispatcher.forward(request, response);
			} else {
				/*스카우트 불가능! 구단주만 스카우트제의를 할 수 있습니다.*/
				request.setAttribute("failScout", "구단주만 영입제안을 할 수 있습니다.");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/message/failScout.jsp");
				dispatcher.forward(request, response);
			}
		} else {
			/*스카우트 불가능! 이미 소속된 팀이 존재합니다.*/
			request.setAttribute("failScout", "해당 플레이어가 이미 소속된 팀이 존재합니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/message/failScout.jsp");
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
