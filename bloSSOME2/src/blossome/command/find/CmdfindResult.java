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
		String loc = request.getParameter("loc");
		String hak = request.getParameter("hak");
		String key1 = request.getParameter("key1");
		String key2 = request.getParameter("key2");
		String mo = request.getParameter("mo");
		
		System.out.println("1 age1:" + age1);
		System.out.println("2 age2:" + age2);
		System.out.println("3 gender:" + gender);
		System.out.println("4 loc:" + loc);
		System.out.println("5 hak:" + hak);
		System.out.println("6 key1:" + key1);
		System.out.println("7 key2:" + key2);
		System.out.println("8 mo:" + mo);
		
		request.setAttribute("aa", "dd");
		return next;
	}

}
