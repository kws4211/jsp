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
import blossome.command.message.CmdMsgInsert;
import blossome.command.tuk.CmdMyTukDelete;
import blossome.command.tuk.CmdMyTukInsert;
import blossome.command.tuk.CmdMyTukList;
import blossome.command.tuk.CmdMyTukPopup;
import blossome.command.tuk.CmdMygguckInsert;
import blossome.command.tuk.CmdMygguckList;
import blossome.command.tuk.CmdMegguckblock;
import blossome.command.tuk.CmdMygguckdelete;
import blossome.command.tuk.CmdgguckInsert;
import blossome.command.tuk.CmdmatList;
import blossome.command.tuk.CmdMeTukDelete;
import blossome.command.tuk.CmdMeTukList;
import blossome.command.tuk.CmdMegguckList;


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
		//내가 툭한 사람 목록에서 툭취소
		commandMap.put("mydelete-do", new CmdMyTukDelete("MytukList.jsp"));
		//나를툭한사람 목록
		commandMap.put("metuk", new CmdMeTukList("metukList.jsp"));
		//나를툭한사람 목룍에서 툭하기
		commandMap.put("tuk-insert", new CmdMyTukInsert("MytukList.jsp"));
		
		//나를툭한사람 목룍에서 툭취소
		commandMap.put("medelete-do", new CmdMeTukDelete("MytukList.jsp"));
		//내가툭한사람 꾸욱하기 쪽지팝업
		commandMap.put("popup", new CmdMyTukPopup("gguckMessage.jsp"));
		//내가 꾸욱 리스트
		commandMap.put("mygguck", new CmdMygguckList("MygguckList.jsp"));
		//나를 꾸욱 리스트
		commandMap.put("megguck", new CmdMegguckList("megguckList.jsp"));
		//나의 꾸욱 리스트에서 꾸욱취소
		commandMap.put("mygguck-delete", new CmdMygguckdelete("MygguckList.jsp"));
		//나의 꾸욱 리스트에서 차단하기
		commandMap.put("megguck-block", new CmdMegguckblock("megguckList.jsp"));
		//나를 꾸욱 리스트에서 꾹하기
		commandMap.put("megguck-insert", new CmdMygguckInsert("megguckList.jsp"));
		//쪽지보내기
		commandMap.put("insert", new CmdMsgInsert("MygguckList.jsp"));
		
		commandMap.put("insert-gguck", new CmdgguckInsert("MatchingPage.jsp"));
		//매칭리스트
		commandMap.put("matList", new CmdmatList("MatchingPage.jsp"));
		
		
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
			cmdKey = "mytuk";//메인 페이지 명
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
