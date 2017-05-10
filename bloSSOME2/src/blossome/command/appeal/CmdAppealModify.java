package blossome.command.appeal;

import java.text.DecimalFormat;
import java.util.List;


import javax.servlet.http.HttpServletRequest;


import mvc.board.model.BoardRec;
import mvc.board.model.BoardDao;
import mvc.board.model.BoardException;

public class CmdAppealModify implements Command {
	private String next;

	public CmdAppealModify( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			int id = Integer.parseInt(request.getParameter("bId"));
			BoardRec rec = new BoardRec();
			
			rec.setWriterName(request.getParameter("writerName"));
			rec.setTitle(request.getParameter("title"));
			rec.setContent(request.getParameter("content"));
			rec.setPassword(request.getParameter("password"));
			
			BoardDao dao = BoardDao.getInstance();
			
			int result = BoardDao.getInstance().update(rec);
			
			request.setAttribute("modify", rec);
			
			// 그룹번호(group_id) 지정
			
		}catch( BoardException ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
