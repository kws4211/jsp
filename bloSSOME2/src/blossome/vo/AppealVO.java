package blossome.vo;

public class AppealVO {

	//글번호
	private	String	 app_num;
	//아이디
	private	String mem_id;
	//제목
	private	String	app_title;
	//내용
	private	String	app_content;
	//작성일
	private	String app_date;
	//이미지주소
	private	String	app_img;

	// 생성자
	public AppealVO()
	{
		
	}

	public String getApp_num() {
		return app_num;
	}



	public void setApp_num(String app_num) {
		this.app_num = app_num;
	}



	public String getMem_id() {
		return mem_id;
	}



	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}



	public String getApp_title() {
		return app_title;
	}



	public void setApp_title(String app_title) {
		this.app_title = app_title;
	}



	public String getApp_content() {
		return app_content;
	}



	public void setApp_content(String app_content) {
		this.app_content = app_content;
	}



	public String getApp_date() {
		return app_date;
	}



	public void setApp_date(String app_date) {
		this.app_date = app_date;
	}



	public String getApp_img() {
		return app_img;
	}



	public void setApp_img(String app_img) {
		this.app_img = app_img;
	}
	
	
	
}