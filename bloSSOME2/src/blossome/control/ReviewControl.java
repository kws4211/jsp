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
import blossome.command.review.*;

public class ReviewControl extends HttpServlet {
	
	private HashMap commandMap;
	private String  error = "error.jsp";
	private String dir = "/bloReview/";
	

    public ReviewControl() {
        super();       
		initCommand();
	}
    

	private void initCommand(){
		commandMap = new HashMap();
		commandMap.put("reviewView", new CmdReviewView("reviewView.jsp"));
	    commandMap.put("revdetail", new CmdReviewList("reviewViewDetail.jsp"));
	    commandMap.put("revinsert", new CmdReviewNull("reviewInputForm.jsp"));
	    commandMap.put("insertreview", new CmdReviewInput("reviewSave.jsp"));
	    commandMap.put("revmodi", new CmdReviewModify("reviewModifyForm.jsp"));
	    commandMap.put("revmodidi", new CmdReviewModify2("reviewModify.jsp"));
	    commandMap.put("revdelete", new CmdReviewDelete("reviewView.jsp"));
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
			cmdKey = "reviewView";//메인 페이지 명
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
		
		RequestDispatcher reqDp = getServletContext().getRequestDispatcher(dir +  nextPage );
		reqDp.forward( request, response );
		
	}

}
