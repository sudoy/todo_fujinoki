package todo.forms;

import java.sql.Date;

public class IndexForm {
	private int id;
	private String title;
	private String details;
	private int importance;
	private Date deadline;


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getTitle() {
		return title;
	}


	public void setTitle(String title) {
		this.title = title;
	}


	public String getDetails() {
		return details;
	}


	public void setDetails(String details) {
		this.details = details;
	}


	public int getImportance() {
		return importance;
	}


	public void setImportance(int importance) {
		this.importance = importance;
	}


	public Date getDeadline() {
		return deadline;
	}


	public void setDeadline(Date deadline) {
		this.deadline = deadline;
	}
}