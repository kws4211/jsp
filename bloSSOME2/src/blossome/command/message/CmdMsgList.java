package blossome.command.message;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MessageRepository;
import blossome.vo.MsgVO;

public class CmdMsgList implements Command{
	private String next;

	public CmdMsgList( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		//msg 리스를 불러와서 출력
		MessageRepository repo = new MessageRepository();
		List<MsgVO> list = repo.Receivealllist(id);
		
		request.setAttribute("list", list);
		return next;
	}

}
