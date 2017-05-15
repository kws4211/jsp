package blossome.command.message;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MessageRepository;
import blossome.vo.MsgVO;

public class CmdMsgView implements Command{
	private String next;

	public CmdMsgView( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		//msg 리스를 불러와서 출력
		String num = request.getParameter("num");
		MessageRepository repo = new MessageRepository();
		MsgVO vo = repo.view(num);
		
		request.setAttribute("vo", vo);
		return next;
	}

}
