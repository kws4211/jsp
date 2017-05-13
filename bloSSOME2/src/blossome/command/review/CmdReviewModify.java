package blossome.command.review;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.ReviewRepository;
import blossome.vo.ReviewVO;

public class CmdReviewModify implements Command {
	private String next;

	public CmdReviewModify( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			String revId = request.getParameter("revId");
			ReviewRepository repo = new ReviewRepository();
			ReviewVO vo = repo.selectReviewDetailList(revId);
			request.setAttribute("vo", vo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString()); 
		}
		return next;
	}

}
