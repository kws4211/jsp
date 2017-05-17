package blossome.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.session.MatchingRepository;
import blossome.session.MemberRepository;
import blossome.session.MessageRepository;

public class CommandMain implements Command{
	private String next;

	public CommandMain( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		MemberRepository repo = new MemberRepository();
		//전체인원
		int totalMem = repo.checkMem();
		//매칭을 기다리는 멤버
		int waitMem = repo.WaitMem();
		//툭에서 불러오기
		int matchingMem = totalMem-waitMem;
		
		int[] result = {totalMem,waitMem,matchingMem};
		
		request.setAttribute("res", result);
		return next;
	}

}
