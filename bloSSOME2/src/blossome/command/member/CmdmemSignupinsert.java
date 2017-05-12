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
		vo.setMemid(request.getParameter("id"));
		vo.setMemname(request.getParameter("name"));
		vo.setMemnick(request.getParameter("nick"));
		vo.setMempass(request.getParameter("pass"));
		vo.setMembirth(request.getParameter("birth"));
		vo.setMemtel(request.getParameter("tel"));
		vo.setMemloc(request.getParameter("loc"));
		vo.setMememail(request.getParameter("email"));
		String open = request.getParameter("Open");
		
		//상태 유형에 따른 숫자 지정
		if(open.equals("승인안됨")){
			vo.setMemstate(0);
		}else if(open.equals("공개")){
			vo.setMemstate(1);
		}else if(open.equals("비공개")){
			vo.setMemstate(2);
		}else{
			vo.setMemstate(3);
		}
		SignupRepository repo = new SignupRepository();
//		repo.insertSignup(vo);
//		List<MemVO> list = repo.selbyIdlist(vo.getMemId());
		
//		request.setAttribute("list", list);
		return next;
	}
	
}
