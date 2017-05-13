package blossome.command.review;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.ReviewRepository;
import blossome.vo.ReviewVO;

public class CmdReviewDelete implements Command {
	private String next;

	public CmdReviewDelete( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
			ReviewRepository repo = new ReviewRepository();
			String revId = request.getParameter("revId");
			int a = repo.deleteReviewList(revId);
	         List<ReviewVO> list = repo.selectReviewList();
	         request.setAttribute("list", list);
			
		}catch( Exception ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;			
	}

}
