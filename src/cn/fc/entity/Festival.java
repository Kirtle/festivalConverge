package cn.fc.entity;

import java.sql.Timestamp;

public class Festival {
	private int fid;
	private int user_id;
	private String fname;
	private String  fdate;
	private String forigin;
	private String fprogress;
	private String fcustom;
	private String feffect;
	private String fliterature;
	private String fother;
	private Timestamp update_time;
	public int getFid() {
		return fid;
	}
	public void setFid(int fid) {
		this.fid = fid;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getFdate() {
		return fdate;
	}
	public void setFdate(String fdate) {
		this.fdate = fdate;
	}
	public String getForigin() {
		return forigin;
	}
	public void setForigin(String forigin) {
		this.forigin = forigin;
	}
	public String getFprogress() {
		return fprogress;
	}
	public void setFprogress(String fprogress) {
		this.fprogress = fprogress;
	}
	public String getFcustom() {
		return fcustom;
	}
	public void setFcustom(String fcustom) {
		this.fcustom = fcustom;
	}
	public String getFeffect() {
		return feffect;
	}
	public void setFeffect(String feffect) {
		this.feffect = feffect;
	}
	public String getFliterature() {
		return fliterature;
	}
	public void setFliterature(String fliterature) {
		this.fliterature = fliterature;
	}
	public String getFother() {
		return fother;
	}
	public void setFother(String fother) {
		this.fother = fother;
	}
	public String getUpdate_time() {
		return update_time.toString().substring(0, 16);
	}
	public void setUpdate_time(Timestamp update_time) {
		this.update_time = update_time;
	}
	
}
