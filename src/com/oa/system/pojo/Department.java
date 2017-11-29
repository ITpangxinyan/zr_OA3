package com.oa.system.pojo;

import java.io.Serializable;

public class Department implements Serializable {
     /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
     private String name;
     private String location;//位置
     public void setId(String id) {
		this.id = id;
	}
     public String getId() {
		return id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
     public void setLocation(String location) {
		this.location = location;
	}
     public String getLocation() {
		return location;
	}
}
