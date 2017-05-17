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

public class CmdmemLogout implements Command{
	private String next;
	
	public CmdmemLogout(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {

		HttpSession session = request.getSession();
		session.removeAttribute("id");
		if(session.getAttribute("admin") != null){
			session.removeAttribute("admin");
		}
		if(session.getAttribute("nick") != null){
			session.removeAttribute("nick");
		}
		MemberRepository repo = new MemberRepository();
		//전체인원
		int totalMem = repo.checkMem();
		//매칭을 기다리는 멤버
		int metchingMem = repo.MetchingMem();
		//툭에서 불러오기
		int waitMem = totalMem-metchingMem;
		int adminMem = repo.AdminMem();
		
		int[] result = {totalMem,waitMem,metchingMem,adminMem};
		
		request.setAttribute("res", result);
		return next;
	}
	
}
