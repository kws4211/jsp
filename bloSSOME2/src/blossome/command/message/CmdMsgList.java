package blossome.command.message;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;

public class CmdMsgList implements Command{
	private String next;

	public CmdMsgList( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		//msg 리스를 불러와서 출력
		
		
		return next;
	}

}
