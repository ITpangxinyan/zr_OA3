package com.oa.system.pojo;

import java.io.Serializable;

public class Position implements Serializable{
  
	/**
	 * ¸ÚÎ»ÐÅÏ¢
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
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
	
}
