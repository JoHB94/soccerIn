package message.controller;

import java.io.IOException;
import java.util.ArrayList;

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

/**
 * Servlet implementation class MsgListController
 */
@WebServlet("/MsgListController")
public class MsgListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MsgListController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*type = 0이면 스카우트 , type = 2이면 입단지원*/
		HttpSession session = request.getSession();
		MsgService service = new MsgServiceImpl();
		
		String id = (String)session.getAttribute("id");
		String t_name = request.getParameter("t_name");
		int type = Integer.parseInt(request.getParameter("type"));
		
		System.out.println("MsglistController id: " + id + ",t_name: " + t_name + ",type: " + type);
		
		if(type == 0) {
			ArrayList<Message> list = service.checkScout(id);
			if(list.isEmpty()) {
				request.setAttribute("NoMsg", "스카우트 내역 없음.");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/message/noMsg.jsp");
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("type", 0);
				request.setAttribute("list", list);
				System.out.println("messageListController 스카우트 list 호출");
				System.out.println("list: "+list);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/message/playerMessage.jsp");
				dispatcher.forward(request, response);				
			}
			
		} else {
			ArrayList<Message> list = service.checkApply(t_name);
			if(list.isEmpty()) {
				request.setAttribute("NoMsg", "입단지원 내역 없음.");
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/message/noMsg.jsp");
				dispatcher.forward(request, response);
			} else {
				request.setAttribute("type", 1);
				request.setAttribute("list", list);
				System.out.println("messageListController 입단신청 list 호출");
				System.out.println("list: "+list);
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/message/teamMessage.jsp");
				dispatcher.forward(request, response);
			}
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
