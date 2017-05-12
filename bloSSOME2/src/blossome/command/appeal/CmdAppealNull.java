package blossome.command.appeal;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;

public class CmdAppealNull implements Command{
	private String next;

	public CmdAppealNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException{
		return next;
	}

}
