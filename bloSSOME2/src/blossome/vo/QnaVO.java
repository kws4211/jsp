package blossome.vo;

public class QnaVO {
	/*
		qna_num varchar2(20) primary key,--글번호
		mem_id varchar2(20) references BLO_MEMBER(mem_id),  --아이디
		qna_date varchar2(20),                            --작성일
		qna_type varchar2(20),                            --문의유형
		qna_title varchar2(50),                             --제목
		question_content varchar2(1500),               --질문내용
		answer_content varchar2(1500),                 --답변내용
		qna_state number                                  --진행상태
	 */
	private String qnaNum; //글번호
	private String memId;
	private String qnaDate;
	private String qnaType;
	private String qnaTitle;
	private String questionContent;
	private String answerContent;
	private int qnaState;
	
	public String getQnaNum() {
		return qnaNum;
	}
	public void setQnaNum(String qnaNum) {
		this.qnaNum = qnaNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getQnaDate() {
		return qnaDate;
	}
	public void setQnaDate(String qnaDate) {
		this.qnaDate = qnaDate;
	}
	public String getQnaType() {
		return qnaType;
	}
	public void setQnaType(String qnaType) {
		this.qnaType = qnaType;
	}
	public String getQnaTitle() {
		return qnaTitle;
	}
	public void setQnaTitle(String qnaTitle) {
		this.qnaTitle = qnaTitle;
	}
	public String getQuestionContent() {
		return questionContent;
	}
	public void setQuestionContent(String questionContent) {
		this.questionContent = questionContent;
	}
	public String getAnswerContent() {
		return answerContent;
	}
	public void setAnswerContent(String answerContent) {
		this.answerContent = answerContent;
	}
	public int getQnaState() {
		return qnaState;
	}
	public void setQnaState(int qnaState) {
		this.qnaState = qnaState;
	}

}
