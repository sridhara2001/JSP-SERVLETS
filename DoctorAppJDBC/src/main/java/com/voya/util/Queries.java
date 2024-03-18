package com.voya.util;

public class Queries {
	public static final String INSERTQUERY = "insert into doctor(doctor_name,speciality,fees,ratings,experience) values(?,?,?,?,?);";
	public static final String FINDBYID = "select * from doctor where doctor_id=?";
	 public static final String UPDATEQUERY = "update doctor set fees=? where doctor_id=?";
}
