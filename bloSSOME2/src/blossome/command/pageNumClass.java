package blossome.command;

public class pageNumClass {
	private int startNum = 0; // 시작  숫자
	private int endNum = 0; // 끝  숫자
	private int totalPageNum = 0; // 끝  숫자
	
	/*
	 * 메소드명 : SettingPageNum
	 * 역할 : 현재 페이지에 
	 * 총 컬럼 수 와 페이지당 출력하고 싶은 컬럼의 수를 입력받아
	 * 총페이지 수와 시작 rownum값과 끝 rownum값 결과 출력
	 * 리턴값 : int 배열
	 * 0 : 총 페이지 수
	 * 1 : 시작 rownum
	 * 2 : 끝 rownum
	 */
	public int[] SettingPageNum(int totalcol, int countpage, int pageNum){
		int[] resultPage = new int[3];
		
		totalPageNum = totalcol/countpage;
		if(totalcol%countpage > 0){
			totalPageNum++;
		}
		
		int endNum = pageNum * countpage;
		int startNum = endNum - (countpage-1);
		
		resultPage[0] = totalPageNum;
		resultPage[1] = startNum;
		resultPage[2] = endNum;
		
		return resultPage;
	}
}
