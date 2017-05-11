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

import blossome.command.tuk.CmdMyTukDelete;
import blossome.command.tuk.CmdMyTukList;
import blossome.command.tuk.CmdTukList2;


/**
 * Servlet implementation class GuestControl
 */
public class TukControl extends HttpServlet {
	
	private HashMap commandMap;
	private String  error = "error.jsp";
	private String dir = "/tuk/";
	

    public TukControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
		//내가툭한사람 목록
		commandMap.put("mytuk", new CmdMyTukList("MytukList.jsp"));
		//툭취소
		commandMap.put("mydelete-do", new CmdMyTukDelete("tukList.jsp"));
		//나를툭한사람 목록
		commandMap.put("tuk2", new CmdTukList2("tukList2.jsp"));
		
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
			cmdKey = "tuk";//메인 페이지 명
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
