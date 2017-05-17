package blossome.command.admin;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.command.pageNumClass;
import blossome.session.ApproveRepository;
import blossome.vo.MemVO;

public class CmdadMemSearch implements Command{
	private String next;

	public CmdadMemSearch(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		//현재 페이지 값을 받아옴
		String pnum = request.getParameter("pnum");
		String memId = request.getParameter("memId");
		String memName = request.getParameter("memName");
		String memSignup = request.getParameter("memSignup");
		//만약 받아온 페이지 넘버값이 없다면 1페이지로 고정
		int pageNum = 1;
		if(pnum !=  null) pageNum = Integer.parseInt(pnum);
		
		ApproveRepository repo = new ApproveRepository();
		
		pageNumClass p = new pageNumClass();
		int[] res = p.SettingPageNum(repo.memtotalcol(), 10, pageNum);
		

		List<MemVO> list = repo.memsearch(memId,memName,memSignup);
		request.setAttribute("list", list);
		request.setAttribute("total", 0);
		request.setAttribute("alllist",1);
		return next;
	}

}
