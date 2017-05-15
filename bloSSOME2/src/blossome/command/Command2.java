package blossome.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command2 {
	public String execute( HttpServletRequest request, HttpServletResponse response ) throws CommandException;
}
