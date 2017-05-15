package blossome.command.review;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import blossome.command.*;
import blossome.session.ReviewRepository;
import blossome.vo.ReviewVO;

public class CmdReviewList implements Command 
{
	private String next;
	private int totalRecCount;		// 전체 레코드 수	
	private int pageTotalCount;		// 전체 페이지 수
	private int countPerPage = 3;	// 한페이지당 레코드 수

	public CmdReviewList( String _next ){
		next = _next;
	}

	public String execute( HttpServletRequest request ) throws CommandException{
		try{
			String revId = request.getParameter("revId");
			ReviewRepository repo = new ReviewRepository();
			repo.updateRevCount(revId);
			ReviewVO vo = repo.selectReviewDetailList(revId);
			vo.setMemId(revId);
			request.setAttribute("vo", vo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandList.java < 목록보기시 > " + ex.toString() ); 
		}
		return next;
	}
}
