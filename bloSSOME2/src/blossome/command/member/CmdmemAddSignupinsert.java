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
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println("id:"+vo.getMemId());
		
		vo.setMemBlood(request.getParameter("blood"));
		System.out.println("blood:"+vo.getMemBlood());
		
		vo.setMemHobby(request.getParameter("hobby"));
		System.out.println("hobby:"+vo.getMemHobby());
		
		vo.setMemReligion(request.getParameter("religion"));
		System.out.println("religion:"+vo.getMemReligion());
		
		vo.setMemHeight(request.getParameter("height"));
		System.out.println("height:"+vo.getMemHeight());
		
		vo.setMemAbility(request.getParameter("ability"));
		System.out.println("ability:"+vo.getMemAbility());
		
		vo.setMemGender(request.getParameter("gender"));
		System.out.println("gender:"+vo.getMemGender());
		
		vo.setMemFavorgender(request.getParameter("favorgender"));
		System.out.println("favorgender:"+vo.getMemFavorgender());
		
		vo.setMemSalary(request.getParameter("salary"));
		System.out.println("salary:"+vo.getMemSalary());
		
		vo.setMemProperty(request.getParameter("property"));
		System.out.println("property:"+vo.getMemProperty());
		
		vo.setMemCount(request.getParameter("count"));
		System.out.println("count:"+vo.getMemCount());
		
		vo.setMemJob(request.getParameter("job"));
		System.out.println("job:"+vo.getMemJob());
		

		
		SignupRepository repo = new SignupRepository();
		repo.insertAddSignup(vo);

		return next;
	}
	
}
