package blossome.command.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.catalina.filters.ExpiresFilter.XHttpServletResponse;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MemberRepository;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdmemSearchFirst implements Command{
	private String next;
	
	public CmdmemSearchFirst(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		MemberRepository repo = new MemberRepository();
		int res = repo.SearchFirst(name, email);
		
		return next;
	}
	
}
