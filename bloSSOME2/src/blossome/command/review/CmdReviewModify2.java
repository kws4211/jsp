package blossome.command.review;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.ReviewRepository;
import blossome.vo.ReviewVO;

public class CmdReviewModify2 implements Command {
	private String next;

	public CmdReviewModify2( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			String title = request.getParameter("title");
			String content = request.getParameter("content");
			String revId = request.getParameter("revId");
			
			ReviewVO vo = new ReviewVO();
			vo.setRevTitle(title);
			vo.setRevContent(content);
			vo.setRevNum(revId);
			
			ReviewRepository repo = new ReviewRepository();
			ReviewVO revo = repo.updaterev(vo);
			request.setAttribute("revo", revo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString()); 
		}
		return next;
	}

}
