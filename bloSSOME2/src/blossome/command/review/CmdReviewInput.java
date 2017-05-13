package blossome.command.review;

import java.sql.Date;
import java.text.DecimalFormat;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import blossome.vo.ReviewVO;
import blossome.command.*;
import blossome.session.ReviewRepository;

public class CmdReviewInput implements Command {
	private String next;

	public CmdReviewInput( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			ReviewVO vo = new ReviewVO();
			
			vo.setRevTitle(request.getParameter("title"));
			vo.setRevContent(request.getParameter("content"));
			vo.setMemId(request.getParameter("memid"));
			vo.setRevImg(request.getParameter("revImg"));
			
			ReviewRepository repo = new ReviewRepository();
			
			//시퀀스값 받아오기
			String reviewSeq = repo.selectSeq();
			
			String seq = "rev";
			for(int i=0; i<7-reviewSeq.length(); i++){
				seq += "0";
			}
			seq += reviewSeq;
			
			
			vo.setRevNum(seq);
			System.out.println("seq>>>>>>" + seq);
			ReviewVO revo = repo.insertReview(vo);			
			
			request.setAttribute("vo", revo);
			
		}catch( Exception ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
