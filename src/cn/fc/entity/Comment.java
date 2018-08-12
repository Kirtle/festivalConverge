package cn.fc.entity;

import java.sql.Timestamp;

public class Comment {
	private int id;
	private int user_id;
	private int article_id;
	private String content;
	private Timestamp time;
	private int is_delete;
	private String username; //用于多表查询
	private String title; //用于多表查询
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getArticle_id() {
		return article_id;
	}
	public void setArticle_id(int article_id) {
		this.article_id = article_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getTime() {
		return time.toString().substring(5, 16);
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public int getIs_delete() {
		return is_delete;
	}
	public void setIs_delete(int is_delete) {
		this.is_delete = is_delete;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@Override
	public String toString() {
		return "Comment [id=" + id + ", user_id=" + user_id + ", article_id=" + article_id + ", content=" + content
				+ ", time=" + time + ", is_delete=" + is_delete + ", username=" + username + ", title=" + title + "]";
	}

}
