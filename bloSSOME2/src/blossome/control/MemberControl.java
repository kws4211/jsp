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
import blossome.command.CommandNull;
import blossome.command.admin.CmdadQnaList;
import blossome.command.appeal.CmdAppealList;
import blossome.command.appeal.CmdAppealView;
import blossome.command.member.CmdmemModify;
import blossome.command.member.CmdmemPopup;
import blossome.command.member.CmdmemQnaList;
import blossome.command.member.CmdmemQnainsert;
import blossome.command.member.CmdmemView;
import blossome.command.member.CmdmemaddView;


/**
 * Servlet implementation class GuestControl
 */
public class MemberControl extends HttpServlet {
	
	private HashMap commandMap;
	private String  error = "error.jsp";
	private String dir = "/member/";
	

    public MemberControl() {
        super();       
		initCommand();
	}
 
	private void initCommand(){
		commandMap = new HashMap();
		commandMap.put("memqna", new CmdmemQnaList("memqna.jsp"));
		commandMap.put("insert", new CmdmemQnainsert("memqna.jsp"));
		commandMap.put("view", new CmdmemView("infoView.jsp"));
		commandMap.put("addview", new CmdmemaddView("infoaddView.jsp"));
		commandMap.put("menu", new CommandNull("selectMenu.jsp"));
		commandMap.put("popup", new CmdmemPopup("pwpopup.jsp"));
		commandMap.put("modify", new CmdmemModify("selectMenu.jsp"));
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
			cmdKey = "memqna";//메인 페이지 명
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
		
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher(dir+ nextPage );
		reqDp.forward( request, response );
		
	}

}
