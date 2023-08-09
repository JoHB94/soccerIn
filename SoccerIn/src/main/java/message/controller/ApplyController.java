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
import team.model.Team;
import team.service.TeamService;
import team.service.TeamServiceImpl;

/**
 * Servlet implementation class ApplyController
 */
@WebServlet("/ApplyController")
public class ApplyController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ApplyController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*해당 컨트롤러는 teamInfo.jsp에서 입단지원버튼을 눌렀을 경우 해당 구단의 t_name을 request객체에 받아옵니다.
		 *받아온 t_name과 로그인id로 Message객체를 생성하고 doApply메소드를 실행합니다.
		 *현재 세션의 loginId의 t_name값이 없을 경우 경우 스카웃 제의를 할 수 있습니다.*/
		HttpSession session = request.getSession();
		
		TeamService t_service = new TeamServiceImpl();
		MsgService m_service = new MsgServiceImpl();
		
		String loginId = (String)session.getAttribute("id");
		String t_name = request.getParameter("t_name");
		String myT_name = t_service.checkSign(loginId);
		System.out.println("loginId: " + loginId);
		
		
			if(myT_name == null) {
				/*입단지원 성공!*/
				Message m = new Message(0, loginId,t_name, 0, 1);
				request.setAttribute("didApply", "구단에 입단을 신청했습니다.");
				m_service.doApply(m);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/TeamListController");
				dispatcher.forward(request, response);
				
			} else {
				/*입단지원 실패! 이미 소속된 팀이있습니다.*/
				request.setAttribute("failApply", "이미 소속된 팀이 있습니다.");
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
