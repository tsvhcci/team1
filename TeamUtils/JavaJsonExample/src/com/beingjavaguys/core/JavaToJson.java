package com.beingjavaguys.core;

import java.util.ArrayList;
import com.beingjavaguys.domain.Student;
import com.google.gson.Gson;

public class JavaToJson {
	public void convertJavaToJson(){
		
		Student student = new Student();
		
		ArrayList<String> interests = new ArrayList<String>();
		interests.add("friends");
		interests.add("women");
		interests.add("chatting");
		
		student.setId(1);
		student.setFirstName("ankush");
		student.setLastName("thakur");
		student.setGender("male");
		
		student.setInterests(interests);
		
		Gson gson = new Gson();
		System.out.println(gson.toJson(student));
		
		}
}
