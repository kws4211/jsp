package blossome.vo;

public class MatchingVO {
/*
   mat_num   VARCHAR2(20) CONSTRAINT pk_blo_marching_mat_num primary key, -- 매칭번호
   mat_id1   VARCHAR2(20) NULL,     -- 매칭ID1
   mat_id2   VARCHAR2(20) NULL,     -- 매칭ID2
   mat_state NUMBER       NULL,     -- 상태
   mat_date  VARCHAR2(20) NULL      -- 매칭날짜
 */
	private String matNum;
	private String matId1;
	private String matId2;
	private String matId1name;
	private String matId2name;
	private int matState;
	private String matDate;
	
	public String getMatNum() {
		return matNum;
	}
	public void setMatNum(String matNum) {
		this.matNum = matNum;
	}
	public String getMatId1() {
		return matId1;
	}
	public void setMatId1(String matId1) {
		this.matId1 = matId1;
	}
	public String getMatId2() {
		return matId2;
	}
	public void setMatId2(String matId2) {
		this.matId2 = matId2;
	}
	public int getMatState() {
		return matState;
	}
	public void setMatState(int matState) {
		this.matState = matState;
	}
	public String getMatDate() {
		return matDate;
	}
	public void setMatDate(String matDate) {
		this.matDate = matDate;
	}
	public String getMatId1name() {
		return matId1name;
	}
	public void setMatId1name(String matId1name) {
		this.matId1name = matId1name;
	}
	public String getMatId2name() {
		return matId2name;
	}
	public void setMatId2name(String matId2name) {
		this.matId2name = matId2name;
	}
}
