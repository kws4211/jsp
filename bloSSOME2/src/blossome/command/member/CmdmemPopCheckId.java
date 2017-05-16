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

public class CmdmemPopCheckId implements Command{
	private String next;
	
	public CmdmemPopCheckId(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String id = request.getParameter("id");
		MemberRepository repo = new MemberRepository();
		request.setAttribute("id",id);
		
		return next;
	}
	
}
