package blossome.vo;

public class MsgVO {
/*
   msg_num     VARCHAR2(20)  PRIMARY KEY, -- 쪽지번호
   mem_id references BLO_MEMBER(mem_id),      -- 아이디
   msg_id      VARCHAR2(20)  NULL,     -- 받는아이디
   msg_name    VARCHAR2(20)  NULL,     -- 이름
   msg_content VARCHAR2(300) NULL,     -- 내용
   msg_state   NUMBER        NULL      -- 쪽지상태
 */
	private String msgNum;
	private String memId;
	private String msgId;
	private String msgName;
	private String msgContent;
	private int msgState;
	
	public String getMsgNum() {
		return msgNum;
	}
	public void setMsgNum(String msgNum) {
		this.msgNum = msgNum;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getMsgName() {
		return msgName;
	}
	public void setMsgName(String msgName) {
		this.msgName = msgName;
	}
	public String getMsgContent() {
		return msgContent;
	}
	public void setMsgContent(String msgContent) {
		this.msgContent = msgContent;
	}
	public int getMsgState() {
		return msgState;
	}
	public void setMsgState(int msgState) {
		this.msgState = msgState;
	}
	public String getMsgId() {
		return msgId;
	}
	public void setMsgId(String msgId) {
		this.msgId = msgId;
	}
}
