package blossome.command.appeal;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.*;
import blossome.session.AppealRepository;
import blossome.vo.AppealVO;

public class CmdAppealView implements Command {
	private String next;
	private int totalcol = 0; // 총 컬럼 갯수
	private int startNum = 0; // 시작  숫자
	private int endNum = 0; // 끝  숫자
	private int currentpage = 3; // 페이지 당 표시할  컬럼수	

   public CmdAppealView( String _next ){
      next = _next;
   }
   @Override
   public String execute(HttpServletRequest request) throws CommandException {
      try{
    	//세션에서 ID값 받아옴
  		HttpSession session = request.getSession();
  		String id = (String)session.getAttribute("id");
  		
  		//현재 페이지 넘버값을 받아옴
  		String pnum = request.getParameter("pnum");
  		//만약 받아온 페이지 넘버값이 없다면 1페이지로 고정
  		int pageNum = 1;
  		if(pnum !=  null) pageNum = Integer.parseInt(pnum);

         AppealRepository repo = new AppealRepository();
       //페이지 숫자 계산 하는 클래스
 		pageNumClass p = new pageNumClass();
 		//계산된 숫자를 res배열에 저장
 		int[] res = p.SettingPageNum(repo.totalcol(id), 3, pageNum);
         
         List<AppealVO> list = repo.selectAppealList(id,res[1], res[2]);
         request.setAttribute("list", list);
         request.setAttribute("totalPage", res[0]);
         
      }catch( Exception ex ){
         throw new CommandException("CommandInput.java < 입력시 > " + ex.toString() ); 
      }
      return next;
      
      
   }


}