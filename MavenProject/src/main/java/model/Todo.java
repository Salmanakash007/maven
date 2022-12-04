package model;

import java.util.Date;

public class Todo {

	private String tittle;
	private String content;
	private Date date;
	public Todo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Todo(String tittle, String content, Date date) {
		super();
		this.tittle = tittle;
		this.content = content;
		this.date = date;
	}
	public String getTittle() {
		return tittle;
	}
	public void setTittle(String tittle) {
		this.tittle = tittle;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "Todo [tittle=" + tittle + ", content=" + content + ", date=" + date + "]";
	}
	
	
	
}
