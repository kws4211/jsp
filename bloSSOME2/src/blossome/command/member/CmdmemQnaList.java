package blossome.command.member;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdmemQnaList implements Command{
	private String next;
	private int totalcol = 0; // 총 컬럼 갯수
	private int startNum = 0; // 시작  숫자
	private int endNum = 0; // 끝  숫자
	private int currentpage = 3; // 페이지 당 표시할  컬럼수	
	
	public CmdmemQnaList(String _next) {
		next = _next;
	}

	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		//세션에서 ID값 받아옴
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");;
		QnaRepository repo = new QnaRepository();
		List<QnaVO> list = repo.selbyIdlist(id);
		request.setAttribute("list", list);
		return next;
	}
	
}
