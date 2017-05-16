package blossome.command.tuk;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MemberRepository;
import blossome.session.MessageRepository;
import blossome.session.TukRepository;
import blossome.vo.MemVO;
import blossome.vo.MsgVO;
import blossome.vo.TukVO;

public class CmdgguckInsert implements Command{
	private String next;

	public CmdgguckInsert( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		System.out.println("<<<<<<<<<<<<<<<일로옴>>>>>>>>>>>>>>>>>>");
		//세션가져오기
		HttpSession session = request.getSession();
		String myid = (String)session.getAttribute("id");
		
		String con = (String)request.getParameter("con");
		String choid = (String)request.getParameter("id");
		
		String choiceId = (String)request.getParameter("memId");
		
		MemberRepository remem = new MemberRepository();
		MemVO vo = remem.info(myid);
		
		MsgVO mvo = new MsgVO();
		mvo.setMemId(myid);
		mvo.setMsgId(choiceId);
		mvo.setMsgContent(con);
		mvo.setMsgName(vo.getMemName());
		
		TukVO tvo = new TukVO();
		TukRepository repo = new TukRepository();
		
		//시퀀스 값 받아오기
		String tukSeq = repo.selectSeq();
        
        String seq = "tuk";
        for(int i=0; i<7-tukSeq.length(); i++){
           seq += "0";
        }
        seq += tukSeq;
        
        tvo.setMemId(myid);
        tvo.setChoiceId(choiceId);
        tvo.setChoiceNum(seq);
        System.out.println("seq>>>>>>" + seq); 
		
		// 꾸욱여부로 전환
		int result = repo.seekMyInfo(tvo);
		
		//result !=0이면 이미 값이 있는것=>update
		if(result != 0){
			//내꾹 4로 update
			repo.gguckUpdateMatching(myid, choiceId);
			//상대방꺼 4로 update
			repo.gguckUpdateMatching2(myid, choiceId);
		}else{
			repo.ggukInsert(tvo);
			//상대방꺼 4로 update
			repo.gguckUpdateMatching2(myid, choiceId);
		}

		//내정보에 꾸욱 여부 카운트 증가
		remem.gguck(myid);
		
	/*	List<TukVO> list = repo.mygguckselectlist(myid);
		request.setAttribute("list", list);*/
		
		
		return next;
	}

}
