package com.beingjavaguys.core;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;

import com.beingjavaguys.domain.Student;
import com.google.gson.Gson;

public class JsonToJava {
	
	public void jsonToJava(){
		
		try {
			File file = new File("json/student.json");
			BufferedReader br = new BufferedReader(new FileReader(file));
			Gson gson = new Gson();
			Student student = gson.fromJson(br, Student.class);
			
			System.out.println("id: "+student.getId()+" First Name:"+student.getFirstName()
			+" Last Name: "+student.getLastName()+" Gender: "+student.getGender()+" City: "+student.getCity());
			
			System.out.println("Interests: ");
			for(int i=0;i<=student.getInterests().size()-1;i++){
				System.out.println(student.getInterests().get(i));
			}
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		}
		
		
	}
}
