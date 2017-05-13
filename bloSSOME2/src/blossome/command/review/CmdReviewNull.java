package blossome.command.review;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;

public class CmdReviewNull implements Command{
	private String next;

	public CmdReviewNull( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException{
		return next;
	}

}
