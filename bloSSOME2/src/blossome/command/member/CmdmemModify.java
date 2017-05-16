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

public class CmdmemModify implements Command{
	private String next;
	
	public CmdmemModify(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		//세션에서 ID값 받아옴
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String year = request.getParameter("year");
		String month = request.getParameter("month");
		String date = request.getParameter("date");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String loc = request.getParameter("loc");
		String qna = request.getParameter("qna");
		String ans = request.getParameter("ans");
		String email = request.getParameter("email");
		
		MemVO vo = new MemVO();
		
		vo.setMemId(id);
		vo.setMemPass(pw);
		vo.setMemNick(nick);
		vo.setMemBirth(year+"/"+month+"/"+date);
		vo.setMemTel(tel1+tel2+tel3);
		vo.setMemLoc(loc);
		vo.setMemQuestion(qna);
		vo.setMemAnswer(ans);
		vo.setMemEmail(email);
		MemberRepository repo = new MemberRepository();
		int res = repo.modyfy(vo);
		
		
		return next;
	}
	
}
