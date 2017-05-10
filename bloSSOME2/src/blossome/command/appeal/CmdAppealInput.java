package blossome.command.appeal;

import java.text.DecimalFormat;
import java.util.List;


import javax.servlet.http.HttpServletRequest;

import blossome.vo.AppealVO;
import mvc.board.model.BoardRec;
import mvc.board.model.BoardDao;
import mvc.board.model.BoardException;

public class CmdAppealInput implements Command {
	private String next;

	public CmdAppealInput( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{

			AppealVO vo = new AppealVO();
			
			vo.setWriterName(request.getParameter("writerName"));
			vo.setTitle(request.getParameter("title"));
			vo.setContent(request.getParameter("content"));
			vo.setPassword(request.getParameter("password"));
			
			BoardDao dao = BoardDao.getInstance();
			int groupId = dao.getGroupId();
			rec.setGroupId(groupId);
			
			// 순서번호(sequence_no) 지정
			DecimalFormat dformat = new DecimalFormat("0000000000");
			rec.setSequenceNo( dformat.format(groupId) + "999999");
			
			// DB에 insert
			rec.setArticleId(dao.insert(rec));
			//BoardDao.getInstance().insert(rec);
			request.setAttribute("insert", rec);
			
			// 그룹번호(group_id) 지정
			
		}catch( CommandException ex ){
			throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
		}
		return next;
	}

}
