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
import blossome.vo.MemVO;
import blossome.vo.QnaVO;

public class CmdmemSearchSecond implements Command{
	private String next;
	
	public CmdmemSearchSecond(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String id = request.getParameter("id");
		String answer = request.getParameter("answer");
		MemberRepository repo = new MemberRepository();
		MemVO vo = repo.SearchSecond(id, answer);
		
		request.setAttribute("vo", vo);
		
		return next;
	}
	
}
