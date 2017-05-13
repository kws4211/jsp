package blossome.command.message;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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
		//msg 리스를 불러와서 출력
		MessageRepository repo = new MessageRepository();
		List<MsgVO> list = repo.alllist();
		
		request.setAttribute("list", list);
		return next;
	}

}
