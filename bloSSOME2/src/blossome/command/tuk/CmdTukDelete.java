package blossome.command.tuk;

import javax.servlet.http.HttpServletRequest;
import blossome.command.*;

public class CmdTukDelete implements Command{
	private String next;

	public CmdTukDelete( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		
		String choice_num = (String) request.getParameter("choice_num");
//		List <TukVO> mList = MessageDao.getInstance().selectList();
		request.setAttribute("re","이동되는지 확인");
		return next;
	}

}
