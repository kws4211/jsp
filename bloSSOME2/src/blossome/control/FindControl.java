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
import blossome.command.find.CmdTukDelete;
import blossome.command.find.CmdTukInsert;
import blossome.command.find.CmdfindResult;


/**
 * Servlet implementation class GuestControl
 */
public class FindControl extends HttpServlet {
	
	private HashMap commandMap;
	private String  error = "error.jsp";
	private String dir = "/find/";
	

    public FindControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
		commandMap.put("find", new CommandNull("findidealtype.jsp"));
		commandMap.put("res", new CmdfindResult("test.jsp"));
		commandMap.put("tuk-insert", new CmdTukInsert("test.jsp"));
		commandMap.put("tuk-delete", new CmdTukDelete("test.jsp"));
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
			cmdKey = "find";//메인 페이지 명
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
