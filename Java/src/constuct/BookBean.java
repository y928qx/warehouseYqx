package constuct;
import java.io.*;

import lombok.Getter;
public class BookBean {
	private String BookName="";
	private int BookNum='1';
	public BookBean() {
	}
	public String getBookName() {
		return BookName;
	}
	public void setBookName(String bookName) {
		BookName = bookName;
	}
	public int getBookNum() {
		return BookNum;
	}
	public void setBookNum(int bookNum) {
		BookNum = bookNum;
	}
	
	
}
