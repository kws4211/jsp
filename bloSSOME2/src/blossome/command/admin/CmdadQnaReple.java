package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
import blossome.session.MatchingRepository;
import blossome.session.QnaRepository;
import blossome.vo.MatchingVO;
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
		repo.reple(num,reple);
		
		//현재 페이지 넘버값을 받아옴
		String pnum = request.getParameter("pnum");
		//만약 받아온 페이지 넘버값이 없다면 1페이지로 고정
		int pageNum = 1;
		if(pnum !=  null) pageNum = Integer.parseInt(pnum);
		
		pageNumClass p = new pageNumClass();
		int[] res = p.SettingPageNum(repo.totalcol(), 10, pageNum);
				
		List<QnaVO> list = repo.selectlist(res[1],res[2]);
		request.setAttribute("list", list);
		request.setAttribute("total", res[0]);
		return next;
	}
	
}
