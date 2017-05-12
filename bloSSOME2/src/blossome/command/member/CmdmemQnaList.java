package blossome.command.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdmemQnaList implements Command{
	private String next;
	
	public CmdmemQnaList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		//세션에서 ID값 받아옴
		String id = "id";
		QnaRepository repo = new QnaRepository();
		List<QnaVO> list = repo.selbyIdlist(id);
		request.setAttribute("list", list);
		return next;
	}
	
}
