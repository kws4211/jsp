package blossome.command.member;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MemberRepository;

public class CmdmemCheckIdserver implements Command{
	private String next;
	
	public CmdmemCheckIdserver(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String id = request.getParameter("userId");
		MemberRepository repo = new MemberRepository();
		int res = repo.checkLogin(id);
		
		request.setAttribute("res", res);
		
		return next;
	}
	
}
