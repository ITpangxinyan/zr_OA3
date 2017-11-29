package com.oa.emp.pojo;

import java.io.Serializable;

import com.oa.system.pojo.Department;
import com.oa.system.pojo.Position;
import com.oa.system.pojo.Role;

public class Emp implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String id;
	private String name;
	private String nameid;
	private String password;
	private String sex;
	private String dateOfBirth;
	private String  email;
	private String   telephone;
	private String   cellphone; //移动电话
	private String  address; //住址
    private String  introduce;//个人介绍
    private Department department;//部门
    private Position position;//职位
    
    private String departmentId;
    private String positionId;
    
    private Role role;
   
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNameid() {
		return nameid;
	}
	public void setNameid(String nameid) {
		this.nameid = nameid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDateOfBirth() {
		return dateOfBirth;
	}
	public void setDateOfBirth(String dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getCellphone() {
		return cellphone;
	}
	public void setCellphone(String cellphone) {
		this.cellphone = cellphone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getIntroduce() {
		return introduce;
	}
	public void setIntroduce(String introduce) {
		this.introduce = introduce;
	}
	public Department getDepartment() {
		return department;
	}
	public void setDepartment(Department department) {
		this.department = department;
	}
	public Position getPosition() {
		return position;
	}
	public void setPosition(Position position) {
		this.position = position;
	}
	
    public void setDepartmentId(String departmentId) {
		this.departmentId = departmentId;
	}
    public String getDepartmentId() {
		return departmentId;
	}
    public void setPositionId(String positionId) {
		this.positionId = positionId;
	}
    public String getPositionId() {
		return positionId;
	}
   public void setRole(Role role) {
	this.role = role;
}
   public Role getRole() {
	return role;
}
	
}
