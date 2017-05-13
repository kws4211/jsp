package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
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
		String pnum = request.getParameter("pnum");
		int pageNum = 1;
		if(pnum !=  null) pageNum = Integer.parseInt(pnum);
		
		MatchingRepository repo = new MatchingRepository();
		pageNumClass p = new pageNumClass();
		
		int[] res = p.SettingPageNum(repo.totalcol(), 10, pageNum);		
		
		List<MatchingVO> list = repo.selectlist(res[1], res[2]);
		request.setAttribute("list", list);
		request.setAttribute("totalNum", res[0]);
		return next;
	}
	
}
