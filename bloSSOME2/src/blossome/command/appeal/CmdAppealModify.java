package blossome.command.appeal;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.AppealRepository;
import blossome.vo.AppealVO;

public class CmdAppealModify implements Command {
	private String next;

	public CmdAppealModify( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			String appId = request.getParameter("appId");
			AppealRepository repo = new AppealRepository();
			AppealVO vo = repo.selectAppealDetailList(appId);
			request.setAttribute("vo", vo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString()); 
		}
		return next;
	}

}
