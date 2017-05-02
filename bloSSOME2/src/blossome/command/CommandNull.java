package blossome.command;

import javax.servlet.http.HttpServletRequest;

public class CommandNull implements Command{
	private String next;

	public CommandNull( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		request.setAttribute("re","이동되는지 확인");
		return next;
	}

}
