package blossome.vo;

public class AppealVO {

	//글번호
	private	String	 appNum;
	//아이디
	private	String memId;
	//제목
	private	String	appTitle;
	//내용
	private	String	appContent;
	//작성일
	private	String appDate;
	//이미지주소
	private	String	appImg;
	
	//이름
	private String memName;
	
	//상대방 아이디
	private String choiceId;
	
	//직업
	private String memJob;
	
	//조회수
	private String appCount;
	
	//이미지
	private String memImg;

	// 생성자
	public AppealVO()
	{
		
	}

	public String getAppNum() {
		return appNum;
	}

	public void setAppNum(String appNum) {
		this.appNum = appNum;
	}

	public String getMemId() {
		return memId;
	}

	public void setMemId(String memId) {
		this.memId = memId;
	}

	public String getAppTitle() {
		return appTitle;
	}

	public void setAppTitle(String appTitle) {
		this.appTitle = appTitle;
	}

	public String getAppContent() {
		return appContent;
	}

	public void setAppContent(String appContent) {
		this.appContent = appContent;
	}

	public String getAppDate() {
		return appDate;
	}

	public void setAppDate(String appDate) {
		this.appDate = appDate;
	}

	public String getAppImg() {
		return appImg;
	}

	public void setAppImg(String appImg) {
		this.appImg = appImg;
	}

	public String getMemName() {
		return memName;
	}

	public void setMemName(String memName) {
		this.memName = memName;
	}

	public String getMemJob() {
		return memJob;
	}

	public void setMemJob(String memJob) {
		this.memJob = memJob;
	}

	public String getAppCount() {
		return appCount;
	}

	public void setAppCount(String appCount) {
		this.appCount = appCount;
	}

	public String getChoiceId() {
		return choiceId;
	}

	public void setChoiceId(String choiceId) {
		this.choiceId = choiceId;
	}

	public String getMemImg() {
		return memImg;
	}

	public void setMemImg(String memImg) {
		this.memImg = memImg;
	}
	
	
	
}