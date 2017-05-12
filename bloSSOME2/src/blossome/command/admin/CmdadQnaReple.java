package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdadQnaReple implements Command{
	private String next;
	
	public CmdadQnaReple(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		//글번호를 받음
		String num = request.getParameter("num");
		String reple = request.getParameter("reple");
		QnaRepository repo = new QnaRepository();
		int res = repo.reple(num,reple);
		
		List<QnaVO> list = repo.selectlist();
		request.getAttribute("list");
		return next;
	}
	
}
