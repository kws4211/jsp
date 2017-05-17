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
		String send = request.getParameter("send");
		MessageRepository repo = new MessageRepository();
		MsgVO vo;
		if(send != null && send.equals("send")){
			vo = repo.sendview(num);
		}else{
			vo = repo.view(num);
		}
//		repo.countRead(num);
	
		request.setAttribute("vo", vo);
		return next;
	}

}
