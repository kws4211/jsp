package blossome.control;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.command.admin.CmdadApproveList;
import blossome.command.admin.CmdadApproveRe;
import blossome.command.admin.CmdadApproveUp;
import blossome.command.admin.CmdadDetailAddMem;
import blossome.command.admin.CmdadMemLeave;
import blossome.command.admin.CmdadMemList;
import blossome.command.admin.CmdadMemSearch;
import blossome.command.admin.CmdadQnaList;
import blossome.command.admin.CmdadQnaPopup;
import blossome.command.admin.CmdadQnaReple;
import blossome.command.admin.CmdadmatchingDel;
import blossome.command.admin.CmdadmatchingList;




/**
 * Servlet implementation class GuestControl
 */
public class AdminControl extends HttpServlet {
	
	private HashMap commandMap;
	private String  error = "error.jsp";
	private String dir = "/admin/";
	

    public AdminControl() {
        super();       
		initCommand();
	}
	private void initCommand(){
		commandMap = new HashMap();
		commandMap.put("adqna", new CmdadQnaList("adqna.jsp"));
		commandMap.put("admat", new CmdadmatchingList("admatching.jsp"));
		commandMap.put("popup", new CmdadQnaPopup("adqnareple.jsp"));
		commandMap.put("insert", new CmdadQnaReple("adqna.jsp"));
		commandMap.put("delect", new CmdadmatchingDel("admatching.jsp"));
		
		commandMap.put("approve", new CmdadApproveList("approve.jsp"));	 // 회원승인목록
		commandMap.put("detail", new CmdadDetailAddMem("detail.jsp"));	 // 회원상세보기
		commandMap.put("update", new CmdadApproveUp("approve.jsp"));	 // 회원승인
		commandMap.put("refusal", new CmdadApproveRe("approve.jsp"));	 // 회원승인거절
		commandMap.put("memlist", new CmdadMemList("admemlist.jsp"));	 // 회원관리목록
		commandMap.put("leave", new CmdadMemLeave("admemlist.jsp"));	 // 회원탈퇴
		commandMap.put("memsearch", new CmdadMemSearch("admemlist.jsp"));// 회원관리검색
	}

	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		processRequest(request, response);
	}
	

	private void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

		String nextPage = "";
		String cmdKey	= request.getParameter("cmd");//페이지 명을 보낼 파라미터 이름
		if( cmdKey == null ){
			cmdKey = "adqna";//메인 페이지 명
		}
		
		Command cmd = null;

		try{
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (Command)commandMap.get( cmdKey );
			}else{
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}
			nextPage = cmd.execute( request );
			
		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}
		
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( dir + nextPage );
		reqDp.forward( request, response );
		
	}

}
