package blossome.command.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		request.setAttribute("memid", vo.getMemId());
		
		vo.setMemName(request.getParameter("name"));
		
		vo.setMemNick(request.getParameter("nick"));
		
		vo.setMemPass(request.getParameter("pass"));
		
		vo.setMemQuestion(request.getParameter("question"));
		
		vo.setMemAnswer(request.getParameter("answer"));
		
		vo.setMemBirth(request.getParameter("year") + request.getParameter("mon") + request.getParameter("birth") );
		
		vo.setMemTel(request.getParameter("tel_0") + request.getParameter("tel_1") + request.getParameter("tel_2"));
		
		vo.setMemLoc(request.getParameter("loc"));
		
		vo.setMemEmail(request.getParameter("email"));
		
		String state = request.getParameter("state");
		System.out.println("State:"+state);
		
		//상태 유형에 따른 숫자 지정
		if(state.equals("승인안됨")){
			vo.setMemState(0);
		}else if(state.equals("공개")){
			vo.setMemState(1);
		}else if(state.equals("비공개")){
			vo.setMemState(2);
		}else{
			vo.setMemState(3);
		}
		
		
		
		SignupRepository repo = new SignupRepository();
		repo.insertSignup(vo);

		return next;
	}
	

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response){
		//요청한 url
		String url = request.getRequestURI().toString();
		System.out.println(url);
		
		SignupRepository repo = new SignupRepository();
		if(url.indexOf("") != -1){
			
		}
		
		//get방식으로 넘어온 데이터
		String id=request.getParameter("id");
		String nick=request.getParameter("nick");
		//repo에 로그인 체크 요청
		String result=repo.
		//***********하다가 말았음
	}
	
}
