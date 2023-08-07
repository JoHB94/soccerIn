package team.controller;

import java.io.File;
import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import team.model.Team;
import team.service.TeamService;
import team.service.TeamServiceImpl;

/**
 * Servlet implementation class TeamCreateController
 */
@WebServlet("/TeamCreateController")
public class TeamCreateController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeamCreateController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		TeamService service = new TeamServiceImpl();
		String t_name = request.getParameter("t_name");
		boolean flag = service.checkDuplicateName(t_name);
		/*flag가 true이면 중복 t_name이 아닙니다.*/
		if(flag) {
			
			Team t = new Team();
			
			String img = "";
			
			int maxSize=1024*1024*10;
			
			MultipartRequest multi = null;
			
			String uploadPath = "C:\\SoccerIn\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\webapps\\t_profile_img";
			
			try {
				multi = new MultipartRequest(request, uploadPath,maxSize,"utf-8",new DefaultFileRenamePolicy());
				
				t.setT_owner(multi.getParameter("t_owner"));
				t.setT_name(multi.getParameter("t_name"));
				t.setT_addr(multi.getParameter("t_addr"));
				t.setT_intro(multi.getParameter("t_intro"));
				t.setT_profile(multi.getParameter("t_profile"));
				t.setOn_market(Integer.parseInt(multi.getParameter("onMarket")));
				
				//전송한 전체 파일 이름들을 가져옴
				Enumeration files = multi.getFileNames();
				
				while(files.hasMoreElements()) {
					String file1 =(String)files.nextElement();
					img = multi.getOriginalFileName(file1);
					File file = multi.getFile(file1);
				}
				
				t.setT_profile("/profile_img/" + img);
				service.teamCreate(t);
				response.sendRedirect(request.getContextPath() + "/TeamInfoController");
				
			} catch(Exception e) {
				e.printStackTrace();
			}
		} else {
			/*중복 t_name일 경우 create.jsp으로 forwarding*/
			request.setAttribute("dupT_name", "중복된 t_name입니다.");
			RequestDispatcher dispatcher = request.getRequestDispatcher("/view/team/teamCreate.jsp");
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
