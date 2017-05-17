package blossome.command.member;


import javax.servlet.http.HttpServletRequest;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import blossome.command.Command;
import blossome.command.CommandException;
import blossome.session.SignupRepository;
import blossome.vo.AddMemVO;

public class CmdmemAddSignupinsert implements Command{
	private String next;
	
	public CmdmemAddSignupinsert(String _next) {
		next = _next;
	}
 
	@Override
	public String execute(HttpServletRequest request) throws CommandException {
		try{
			
		
		//파일 업로드
        String savePath = "C:\\workspace1\\blossome2\\bloSSOME2\\WebContent\\upload";
        String dbPath = "/bloSSOME2/upload";
        int sizeLimit = 1024*1024*15;
        
        MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8", new DefaultFileRenamePolicy());
        
         
        String appImg = multi.getFilesystemName("file");
        
        String real = dbPath + "/" + appImg;
		
		AddMemVO vo = new AddMemVO();
		
		vo.setMemFile(real);
		System.out.println(real + "<<<<<<file");
		//받아온 값들을 vo의 내용값지정
		vo.setMemId(multi.getParameter("id"));
		System.out.println("id:"+vo.getMemId());
		
		vo.setMemBlood(multi.getParameter("blood"));
		System.out.println("Blood:"+vo.getMemBlood());
		
		vo.setMemHobby(multi.getParameter("hobby"));
		System.out.println("Hobby:"+vo.getMemHobby());
		
		vo.setMemReligion(multi.getParameter("religion"));
		System.out.println("Religion:"+vo.getMemReligion());
		
		vo.setMemHeight(multi.getParameter("height"));
		System.out.println("Height:"+vo.getMemHeight());
		
		vo.setMemAbility(multi.getParameter("ability"));
		System.out.println("Ability:"+vo.getMemAbility());
		
		vo.setMemGender(multi.getParameter("gender"));
		System.out.println("Gender:"+vo.getMemGender());
		
		vo.setMemFavorgender(multi.getParameter("favorgender"));
		System.out.println("Favorgender:"+vo.getMemFavorgender());
		
		vo.setMemSalary(multi.getParameter("salary"));
		System.out.println("Salary:"+vo.getMemSalary());
		
		vo.setMemProperty(multi.getParameter("property"));
		System.out.println("Property:"+vo.getMemProperty());
		
		vo.setMemJob(multi.getParameter("job"));
		System.out.println("Job:"+vo.getMemJob());
		

		
		SignupRepository repo = new SignupRepository();
		repo.insertAddSignup(vo);
		
		}catch(Exception ex){
			throw new CommandException("CommandInput.java<입력시>" + ex.toString());
		}
		
		return next;
		
	}
	
}
