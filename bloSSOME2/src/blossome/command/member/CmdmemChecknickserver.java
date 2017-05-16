package blossome.command.member;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MemberRepository;

public class CmdmemChecknickserver implements Command{
	private String next;
	
	public CmdmemChecknickserver(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String nick = request.getParameter("userNick");
		MemberRepository repo = new MemberRepository();
		int res = repo.checkLogin(nick);
		
		request.setAttribute("res", res);
		
		return next;
	}
	
}
