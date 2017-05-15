package blossome.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.session.MessageRepository;

public class CommandSide implements Command{
	private String next;

	public CommandSide( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		MessageRepository repo = new MessageRepository();
		int count = repo.NotReadCount(id);
		request.setAttribute("count", count);
		return next;
	}

}
