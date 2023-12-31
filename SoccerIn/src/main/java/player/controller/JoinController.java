package player.controller;

import java.io.File;
import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import player.model.Player;
import player.service.PlayerService;
import player.service.PlayerServiceImpl;

/**
 * Servlet implementation class JoinController
 */
@WebServlet("/JoinController")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public JoinController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	/*해당 컨트롤러는 joinInfo.jsp에서 필수정보와 선택정보를 넘겨받습니다.
	 * 또한 프로필 이미지를 받아 처리하는 곳 입니다.*/
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		PlayerService service = new PlayerServiceImpl();
		Player p = new Player();
		
		String img = "";
		
		int maxSize=1024*1024*10;
		
		MultipartRequest multi = null;
		
		String uploadPath = "C:\\SoccerIn\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\profile_img";
		
		try {
			multi = new MultipartRequest(request, uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
			/*필수 정보 5개*/
			p.setId(multi.getParameter("id"));
			p.setPwd(multi.getParameter("pwd"));
			p.setP_name(multi.getParameter("p_name"));
			p.setP_email(multi.getParameter("p_email"));
			p.setP_addr(multi.getParameter("p_addr"));
			/*상세정보 7개 (프로필 포함)*/
			
			/*java.util.Date -> java.sql.Date로 형 변환*/
			java.util.Date utilDate = sdf.parse(multi.getParameter("birth"));
			java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
			p.setBirth(sqlDate);
			
			p.setHeight(Integer.parseInt(multi.getParameter("height")));
			p.setWeight(Integer.parseInt(multi.getParameter("weight")));
			p.setPosition(multi.getParameter("position"));
			p.setSpeed(Integer.parseInt(multi.getParameter("speed")));
			p.setP_intro(multi.getParameter("p_intro"));
			p.setOn_market(Integer.parseInt(multi.getParameter("onMarket")));
			
			//전송한 전체 파일 이름들을 가져옴
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file1 =(String)files.nextElement();
				img = multi.getOriginalFileName(file1);
				File file = multi.getFile(file1);
			}
			
			p.setP_profile("/profile_img/" + img);
			service.playerJoin(p);
			response.sendRedirect(request.getContextPath() + "/view/player/login.jsp");
			
		} catch(Exception e) {
			e.printStackTrace();
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
