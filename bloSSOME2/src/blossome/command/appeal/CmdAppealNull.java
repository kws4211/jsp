package blossome.command.appeal;

import javax.servlet.http.HttpServletRequest;

public class CmdAppealNull implements Command{
	private String next;

	public CmdAppealNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException{
		return next;
	}

}
