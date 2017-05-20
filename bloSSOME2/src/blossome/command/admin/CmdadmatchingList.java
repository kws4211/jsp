package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MatchingRepository;
import blossome.session.QnaRepository;
import blossome.vo.MatchingVO;
import blossome.vo.QnaVO;

public class CmdadmatchingList implements Command{
	private String next;
	
	public CmdadmatchingList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		MatchingRepository repo = new MatchingRepository();
		List<MatchingVO> list = repo.selectlist();
		request.setAttribute("list", list);
		return next;
	}
	
}
