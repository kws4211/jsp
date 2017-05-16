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
import blossome.command.member.CmdmemCheckId;
import blossome.command.member.CmdmemCheckIdserver;
import blossome.command.member.CmdmemLogout;
import blossome.command.member.CmdmemPopCheckId;
import blossome.command.member.CmdmemSearchFirst;
import blossome.command.member.CmdmemSearchSecond;
import blossome.command.member.CmdmemSignupinsert;
import blossome.command.member.CmdmemAddSignupinsert;


/**
 * Servlet implementation class GuestControl
 */
public class LoginControl extends HttpServlet {
	
	private HashMap commandMap;
	private String  error = "error.jsp";
	private String dir = "";
	

    public LoginControl() {
        super();       
		initCommand();
	}

	private void initCommand(){
		commandMap = new HashMap();
		commandMap.put("inmem", new CommandNull("signup.jsp"));
		commandMap.put("inmemdb", new CmdmemSignupinsert("addsignup.jsp")); //signup가 되면 add로
		commandMap.put("inmemsucc", new CmdmemAddSignupinsert("loginform.jsp")); //addsignup이 되면 로그인
		commandMap.put("login", new CommandNull("loginform.jsp"));
		commandMap.put("search", new CommandNull("loginsearch.jsp"));
		commandMap.put("checkid", new CmdmemCheckId("loginform.jsp"));
		commandMap.put("searchfirst", new CmdmemSearchFirst("loginanswer.jsp"));
		commandMap.put("searchsecond", new CmdmemSearchSecond("EndSearch.jsp")); //searchsecond가 되면 end로 가고
		commandMap.put("logout", new CmdmemLogout("index.jsp")); //로그아웃되면 index로 가고
		commandMap.put("idpopup", new CmdmemPopCheckId("CheckID.jsp"));
		commandMap.put("idpopupserver", new CmdmemCheckIdserver("view.jsp"));
		
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
			cmdKey = "login";//메인 페이지 명
		}
		
		Command cmd = null;

		try{
			if( commandMap.containsKey( cmdKey ) ){
				cmd = (Command)commandMap.get( cmdKey );
			}else{
				throw new CommandException("지정할 명령어가 존재하지 않음");
			}
			nextPage = cmd.execute( request );
			if(cmdKey.equals("logout")){
				dir = "/bloMain/";
			}else{
				dir = "/login/";
			}
		}catch( CommandException e ){
			request.setAttribute("javax.servlet.jsp.jspException", e );
			nextPage = error;
			System.out.println("오류 : " + e.getMessage() );
		}
		
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher( dir+nextPage );
		reqDp.forward( request, response );
		
	}

}
