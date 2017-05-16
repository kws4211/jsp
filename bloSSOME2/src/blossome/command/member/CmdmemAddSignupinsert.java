package blossome.command.member;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.SignupRepository;
import blossome.vo.AddMemVO;

public class CmdmemAddSignupinsert implements Command{
	private String next;
	
	public CmdmemAddSignupinsert(String _next) {
		next = _next;
	}
 
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		AddMemVO vo = new AddMemVO();
		
		//받아온 값들을 vo의 내용값지정
		vo.setMemId(request.getParameter("id"));
		
		vo.setMemBlood(request.getParameter("blood"));
		
		vo.setMemHobby(request.getParameter("hobby"));
		
		vo.setMemReligion(request.getParameter("religion"));
		
		vo.setMemHeight(request.getParameter("height"));
		
		vo.setMemAbility(request.getParameter("ability"));
		
		vo.setMemGender(request.getParameter("gender"));
		
		vo.setMemFavorgender(request.getParameter("favorgender"));
		
		vo.setMemSalary(request.getParameter("salary"));
		
		vo.setMemProperty(request.getParameter("property"));
		
		String count = request.getParameter("count");
		
		vo.setMemJob(request.getParameter("job"));
		

		
		SignupRepository repo = new SignupRepository();
		repo.insertAddSignup(vo);

		return next;
	}
	
}
