package player.controller;

import java.io.IOException;
import java.sql.Date;

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
 * Servlet implementation class PlayerInfoController
 */
@WebServlet("/PlayerInfoController")
public class PlayerInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlayerInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PlayerService service = new PlayerServiceImpl();
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		Player p = service.playerInfo(id);
		
		String p_name = p.getP_name();
		String p_addr = p.getP_addr();
		Date birth = p.getBirth();
		int height = p.getHeight();
		int weight = p.getWeight();
		int speed = p.getSpeed();
		String position = p.getPosition();
		String p_intro = p.getP_intro();
		
		request.setAttribute("p_name", p_name);
		request.setAttribute("p_addr", p_addr);
		request.setAttribute("birth", birth);
		request.setAttribute("height", height);
		request.setAttribute("weight", weight);
		request.setAttribute("speed", speed);
		request.setAttribute("position", position);
		request.setAttribute("p_intro", p_intro);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/player/playerInfo.jsp");
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
