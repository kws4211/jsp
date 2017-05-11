package blossome.command.find;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;

public class CmdfindResult implements Command{
	private String next;

	public CmdfindResult( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		/*
		 * 폼에 저장된 값을 가져와서 받아줌
		 * 그리고 test.jsp에 값을 보내줌
		 */
		String age1 = request.getParameter("age1");
		String age2 = request.getParameter("age2");
		String gender = request.getParameter("gender");
		
		request.setAttribute("aa", "dd");
		return next;
	}

}
