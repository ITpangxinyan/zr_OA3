package com.oa.emp.pojo;

import java.io.Serializable;

public class Permission implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String  PermId;
	private String  PermName;
	private String  permInfo;
	public String getPermId() {
		return PermId;
	}
	public void setPermId(String permId) {
		PermId = permId;
	}
	public String getPermName() {
		return PermName;
	}
	public void setPermName(String permName) {
		PermName = permName;
	}
	public String getPermInfo() {
		return permInfo;
	}
	public void setPermInfo(String permInfo) {
		this.permInfo = permInfo;
	}
	
   
}
