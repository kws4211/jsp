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
import blossome.command.CommandSide;
import blossome.command.admin.CmdadQnaList;
import blossome.command.appeal.CmdAppealList;
import blossome.command.appeal.CmdAppealView;
import blossome.command.tuk.CmdMyTukList;


/**
 * Servlet implementation class GuestControl
 */
public class BlossomControl extends HttpServlet {
	
	private HashMap commandMap;
	private String dir = "/bloMain/";
	private String  error = "error.jsp";
	

    public BlossomControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
		commandMap.put("main", new CommandNull("index.jsp"));
		commandMap.put("aside", new CommandSide("asidemenu.jsp"));
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
			cmdKey = "main";//메인 페이지 명
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
		
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher(dir + nextPage );
		reqDp.forward( request, response );
		
	}

}
