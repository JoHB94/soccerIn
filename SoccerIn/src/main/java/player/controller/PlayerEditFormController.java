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
 * Servlet implementation class PlayerEditFormController
 */
@WebServlet("/PlayerEditFormController")
public class PlayerEditFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlayerEditFormController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*해당 서블릿은 수정폼에 player데이터를 전달한다.*/
		PlayerService service = new PlayerServiceImpl();
		HttpSession session = request.getSession();
		
		String id = (String)session.getAttribute("id");
		Player p = service.playerInfo(id);
		request.setAttribute("p", p);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/player/playerEdit.jsp");
		dispatcher.forward(request, response);
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
