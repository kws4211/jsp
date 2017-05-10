package blossome.command.qna;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdQnaList implements Command{
	private String next;
	
	public CmdQnaList(String _next) {
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
