package blossome.command.member;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
		
		vo.setMemName(request.getParameter("name"));
		
		vo.setMemNick(request.getParameter("nick"));
		
		vo.setMemPass(request.getParameter("pass"));
		
		vo.setMemQuestion(request.getParameter("question"));
		
		vo.setMemAnswer(request.getParameter("answer"));
		
		vo.setMemyear(request.getParameter("year"));
		
		vo.setMemmon(request.getParameter("mon"));
		
		vo.setMemBirth(request.getParameter("birth"));
		
		vo.setMemTel0(request.getParameter("tel_0"));
		vo.setMemTel1(request.getParameter("tel_1"));
		vo.setMemTel2(request.getParameter("tel_2"));

		vo.setMemLoc(request.getParameter("loc"));
		
		vo.setMemEmail(request.getParameter("email"));
		
		String open = request.getParameter("open");
		
		//상태 유형에 따른 숫자 지정
		if(open.equals("승인안됨")){
			vo.setMemState(0);
		}else if(open.equals("공개")){
			vo.setMemState(1);
		}else if(open.equals("비공개")){
			vo.setMemState(2);
		}else{
			vo.setMemState(3);
		}
		
		
		SignupRepository repo = new SignupRepository();
		//repo.insertSignup(vo);
//***************************************여기수정
//		List<MemVO> list = repo.selbyIdlist(vo.getMemId());
//		request.setAttribute("list", list);
		return next;
	}
	
}
