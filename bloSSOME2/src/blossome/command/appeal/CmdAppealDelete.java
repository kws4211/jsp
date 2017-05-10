package blossome.command.appeal;

import javax.servlet.http.HttpServletRequest;

import mvc.guest.model.MessageDao;
import mvc.guest.model.MessageException;

public class CmdAppealDelete implements Command {
	private String next;

	public CmdAppealDelete( String _next ){
		next = _next;
	}
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		// TODO Auto-generated method stub
		try{
				
		
			int messageId = Integer.parseInt(request.getParameter("messageId"));
			String password = request.getParameter("password");
			
			int resultCnt = BoardDao.getInstance().delete(messageId, password);
			
			request.setAttribute("result", resultCnt);
		}catch( BoardException ex ){
			throw new CommandException("CommandDelete.java < 삭제시 > " + ex.toString() ); 
		}
		
		return next;			
	}

}
