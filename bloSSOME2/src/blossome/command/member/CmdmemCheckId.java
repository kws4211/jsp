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
		int st = repo.idinfo(id);
		MemVO vo = repo.info(id);
		if(res > 0){
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("nick", vo.getMemNick());
			if(st == 3){
				session.setAttribute("admin", "admin");
			}
		}
		
		return next;
	}
	
}
