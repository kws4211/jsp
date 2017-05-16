package blossome.command.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
import blossome.session.MemberRepository;
import blossome.session.QnaRepository;
import blossome.vo.MemVO;
import blossome.vo.QnaVO;

public class CmdmemView implements Command{
	private String next;
	
	public CmdmemView(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		//세션에서 ID값 받아옴
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String pw = request.getParameter("pw");
		
		MemberRepository repo = new MemberRepository();
		int res = repo.checkLogin(id, pw);
		
		MemVO vo = repo.info(id, pw);

		request.setAttribute("vo", vo);
		
		return next;
	}
	
}
