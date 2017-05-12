package blossome.command.appeal;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.AppealRepository;
import blossome.vo.AppealVO;

public class CmdAppealDelete implements Command {
	private String next;

	public CmdAppealDelete( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
			AppealRepository repo = new AppealRepository();
			String appId = request.getParameter("appId");
			int a = repo.deleteAppealList(appId);
	         List<AppealVO> list = repo.selectAppealList();
	         request.setAttribute("list", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;			
	}

}
