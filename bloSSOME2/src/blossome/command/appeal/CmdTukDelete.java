package blossome.command.appeal;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.Command2;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
import blossome.session.AppealRepository;
import blossome.session.TukRepository;
import blossome.vo.AppealVO;
import blossome.vo.TukVO;

public class CmdTukDelete implements Command {
	private String next;

	public CmdTukDelete( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			HttpSession session = request.getSession();
			String id = (String)session.getAttribute("id");
			TukVO vo = new TukVO();
			//나를 툭한 리스트에서 memId가 내가 선택할아이디니까 memId를 넣어줌
			vo.setMemId(id);
			vo.setChoiceId(request.getParameter("memId"));
			
			AppealRepository repo = new AppealRepository();

	        int result = 0;
	        result = repo.deleteTuk(vo);  
	        
			
			//리스트 뿌려주기
			
	        String appId = request.getParameter("appId");
			AppealRepository repo2 = new AppealRepository();

			AppealVO avo = repo.selectAppealDetailList(appId);
			request.setAttribute("vo", avo);
			request.setAttribute("resultDel", result);
			
			
		}catch( Exception ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;			
	}

}
