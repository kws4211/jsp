package blossome.command.find;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.MemberRepository;
import blossome.vo.FIndVO;
import blossome.vo.MemVO;

public class CmdfindResult implements Command{
	private String next;

	public CmdfindResult( String _next ){
		next = _next;
	}
	
	public String execute(HttpServletRequest request) throws CommandException {
		/*
		 * 폼에 저장된 값을 가져와서 받아줌
		 * 그리고 test.jsp에 값을 보내줌
		 */
		
		FIndVO vo = new FIndVO();
		String age1 = request.getParameter("age1");
		String age2 = request.getParameter("age2");
		String gender = request.getParameter("gender");
		String[] loc = request.getParameterValues("loc");
		String[] hak = request.getParameterValues("hak");
		String key1 = request.getParameter("key1");
		String key2 = request.getParameter("key2");
		String[] mo = request.getParameterValues("mo");
		vo.setAge1(age1);
		vo.setAge2(age2);
		vo.setGender(gender);
		vo.setLoc(loc);
		vo.setHak(hak);
		vo.setKey1(key1);
		vo.setKey2(key2);
		vo.setMo(mo);
		
		
		System.out.println("1 age1:" + vo.getAge1());
		System.out.println("2 age2:" + vo.getAge2());
		System.out.println("3 gender:" + vo.getGender());
		System.out.println("4 loc:" + vo.getLoc());
		if(vo.getLoc() != null){
			for (String s : vo.getLoc()) {
				System.out.println("4 loc:" + s);
			}
			System.out.println("4 loc:" + vo.getLoc().toString());
		}
		System.out.println("5 hak:" + vo.getHak());
		if(vo.getHak() != null){
			for (String s : vo.getHak()) {
				System.out.println("5 hak:" + s);
			}
			System.out.println("5 hak:" + vo.getHak().toString());
		}
		System.out.println("6 key1:" + vo.getKey1());
		System.out.println("7 key2:" + vo.getKey2());
		System.out.println("8 mo:" + vo.getMo());
		if(vo.getMo()!= null){
			for (String s : vo.getMo()) {
				System.out.println("8 mo:" + s);
			}
			System.out.println("8 mo:" + vo.getMo().toString());
		}
		
		MemberRepository repo = new MemberRepository();
		List<MemVO> list = repo.Find(vo);
		/*
		 * select  m.* 
from blo_member m,BLO_ADDMEMBER a 
where m.mem_id = a.mem_id and 
to_char(m.mem_birth,'yyyy') between 1980 and 2002 and
a.MEM_HEIGHT between 170 and 180 and
m.mem_loc in('서울','대전') and
a.mem_ability in ('대졸','고졸','','') and 
a.mem_religion in ('기독교','불교');
		 */
		request.setAttribute("list", list);
		return next;
	}

}
