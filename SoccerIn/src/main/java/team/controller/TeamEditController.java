package team.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import team.model.Team;
import team.service.TeamService;
import team.service.TeamServiceImpl;

/**
 * Servlet implementation class TeamEditController
 */
@WebServlet("/TeamEditController")
public class TeamEditController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeamEditController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*해당 컨트롤러는 teamEdit.jsp에서 수정 정보를 받아옵니다.*/
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		/*form의 enctype 변환여부 체크*/
		String enctype = request.getContentType();
        System.out.println("EditController enctype: " + enctype);
		
		TeamService service = new TeamServiceImpl();
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
			
			t.setOn_market(Integer.parseInt(multi.getParameter("onMarket")));
			
			//전송한 전체 파일 이름들을 가져옴
			Enumeration files = multi.getFileNames();
			
			while(files.hasMoreElements()) {
				String file1 =(String)files.nextElement();
				img = multi.getOriginalFileName(file1);
				File file = multi.getFile(file1);
			}
			
			t.setT_profile("/t_profile_img/" + img);
			service.teamEdit(t);
			response.sendRedirect(request.getContextPath() + "/TeamInfoController");
			
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
