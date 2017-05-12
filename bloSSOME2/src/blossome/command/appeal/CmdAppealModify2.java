package blossome.command.appeal;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.AppealRepository;
import blossome.vo.AppealVO;

public class CmdAppealModify2 implements Command {
	private String next;

	public CmdAppealModify2( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String appId = request.getParameter("appId");
			
			AppealVO vo = new AppealVO();
			vo.setAppTitle(title);
			vo.setAppContent(content);
			vo.setAppNum(appId);
			
			AppealRepository repo = new AppealRepository();
			AppealVO revo = repo.updateapp(vo);
			request.setAttribute("revo", revo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString()); 
		}
		return next;
	}

}
