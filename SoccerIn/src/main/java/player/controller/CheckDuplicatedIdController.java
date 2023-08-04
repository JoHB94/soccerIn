package player.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import player.service.PlayerService;
import player.service.PlayerServiceImpl;

/**
 * Servlet implementation class CheckDuplicatedIdController
 */
@WebServlet("/CheckDuplicatedIdController")
public class CheckDuplicatedIdController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CheckDuplicatedIdController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*해당 컨트롤러는 회원가입(join.jsp)에서 필수 가입정보들을 받아온 뒤, DB에서 중복된 id가 존재하는지 검사를 합니다.
	 * 그 후에 중복이 된다면 다시 join.jsp를 중복이 안된다면 joinInfo.jsp 페이지로 forward 합니다.*/
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		PlayerService service = new PlayerServiceImpl();
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String p_name = request.getParameter("p_name");
		String p_email = request.getParameter("p_email");
		String p_addr = request.getParameter("p_addr");
		
		boolean result = service.checkId(id);
		
		System.out.println("중복아이디 체크: " + result);

		request.setAttribute("id", id);
		request.setAttribute("pwd", pwd);
		request.setAttribute("p_name", p_name);
		request.setAttribute("p_email", p_email);
		request.setAttribute("p_addr", p_addr);
		
		/*true일 경우 중복 아이디 없음, false일 경우 중복 아이디 있음*/
		if(result) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/player/joinInfo.jsp");
			dispatcher.forward(request, response);
		} else {
			request.setAttribute("duplication", "1");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/player/join.jsp");
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
