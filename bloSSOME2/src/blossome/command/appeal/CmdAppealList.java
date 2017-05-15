package blossome.command.appeal;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.*;
import blossome.session.AppealRepository;
import blossome.vo.AppealVO;

public class CmdAppealList implements Command 
{
	private String next;
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 3;	// 한페이지당 레코드 수

	public CmdAppealList( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException{
		try{
			String appId = request.getParameter("appId");
			AppealRepository repo = new AppealRepository();
			repo.updateappCount(appId);
			AppealVO vo = repo.selectAppealDetailList(appId);
			vo.setMemId(appId);
			request.setAttribute("vo", vo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandList.java < 목록보기시 > " + ex.toString() ); 
		}
		return next;
	}
}
