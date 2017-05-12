package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdadQnaList implements Command{
	private String next;
	
	public CmdadQnaList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		QnaRepository repo = new QnaRepository();
		List<QnaVO> list = repo.selectlist();
		request.setAttribute("list", list);
		return next;
	}
	
}
