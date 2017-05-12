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

public class CmdmemCheckId implements Command{
	private String next;
	
	public CmdmemCheckId(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		String id = request.getParameter("user");
		String pw = request.getParameter("pw");
		MemberRepository repo = new MemberRepository();
		int res = repo.checkLogin(id, pw);
		if(res > 0){
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
		}
		
		return next;
	}
	
}