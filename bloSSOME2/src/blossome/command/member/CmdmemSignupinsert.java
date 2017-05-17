package blossome.command.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.SignupRepository;
import blossome.vo.MemVO;

public class CmdmemSignupinsert implements Command{
	private String next;
	
	public CmdmemSignupinsert(String _next) {
		next = _next;
	}
 
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		MemVO vo = new MemVO();
		
		//받아온 값들을 vo의 내용값지정
		vo.setMemId(request.getParameter("id"));
		System.out.println("id:"+vo.getMemId());
		String id = request.getParameter("id");
		
		vo.setMemName(request.getParameter("name"));
		System.out.println("name:"+vo.getMemName());
		
		vo.setMemNick(request.getParameter("nick"));
		System.out.println("nick:"+vo.getMemNick());
		
		vo.setMemPass(request.getParameter("pass"));
		System.out.println("pass:"+vo.getMemPass());
		
		vo.setMemQuestion(request.getParameter("question"));
		System.out.println("question:"+vo.getMemQuestion());
		
		vo.setMemAnswer(request.getParameter("answer"));
		System.out.println("answer:"+vo.getMemAnswer());
		
		vo.setMemBirth(request.getParameter("year") + request.getParameter("month") + request.getParameter("date") );
		System.out.println("Birth:"+vo.getMemBirth());
		
		vo.setMemTel(request.getParameter("tel_0") + request.getParameter("tel_1") + request.getParameter("tel_2"));
		System.out.println("Tel:"+vo.getMemTel());
		
		vo.setMemLoc(request.getParameter("loc"));
		System.out.println("loc:"+vo.getMemLoc());
		
		vo.setMemEmail(request.getParameter("email"));
		System.out.println("email:"+vo.getMemEmail());
		
		String state = request.getParameter("state");
		System.out.println("State:"+state);
		
		//상태 유형에 따른 숫자 지정
		if(state.equals("승인안됨")){
			vo.setMemState("0");
		}else if(state.equals("0")){
			vo.setMemState("1");
		}else if(state.equals("1")){
			vo.setMemState("2");
		}else{
			vo.setMemState("3");
		}
		
		
		
		SignupRepository repo = new SignupRepository();
		repo.insertSignup(vo);
		
		request.setAttribute("id", id);
		
		return next;
	}
	

	
}
