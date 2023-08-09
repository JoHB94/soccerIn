package message.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import message.service.MsgService;
import message.service.MsgServiceImpl;

/**
 * Servlet implementation class MsgResponseController
 */
@WebServlet("/MsgResponseController")
public class MsgResponseController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MsgResponseController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		MsgService service = new MsgServiceImpl();
		int msgResponse = Integer.parseInt(request.getParameter("response"));
		String signId = request.getParameter("id");
		String signT_name = request.getParameter("t_name");
		
		/*msgResponse가 0일 경우 accept 1일 경우 delete 호출*/
		if(msgResponse == 0) {
			service.acceptMsg(signId, signT_name);
			request.setAttribute("didAccept", "영입제안을 수락했습니다.");
			session.invalidate();
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/player/login.jsp");
			dispatcher.forward(request, response);
		}else {
			service.rejectMsg(signId, signT_name);
			request.setAttribute("reject", "영입제안을 거절했습니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/MsgListController");
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
