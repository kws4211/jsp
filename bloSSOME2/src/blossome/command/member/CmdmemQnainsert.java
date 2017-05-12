package blossome.command.member;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.QnaRepository;
import blossome.vo.QnaVO;

public class CmdmemQnainsert implements Command{
	private String next;
	
	public CmdmemQnainsert(String _next) {
		next = _next;
	}
 
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		QnaVO vo = new QnaVO();
		//받아온 값들을 vo의 내용값지정
		vo.setMemId(request.getParameter("id"));
		String c = request.getParameter("qnachoice");
		vo.setQuestionContent(request.getParameter("qnacon"));
		//문의 유형에 따른 숫자 지정
		if(c.equals("1:1문의")){
			vo.setQnaState(1);
		}else{
			vo.setQnaState(2);
		}
		QnaRepository repo = new QnaRepository();
		repo.insetQna(vo);
		List<QnaVO> list = repo.selbyIdlist(vo.getMemId());
		
		request.setAttribute("list", list);
		return next;
	}
	
}
