package com.hcci.team.util;
 
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/*
  treatcond.csv
    cb_code,treatcond,,,
        AA001,AAA |  Endovascular Repair | Aortic Aneurysm | Aneurysm | Aorta | Rupture | Bulging,,,
        AA002,Artery | Aorta | Plaque | Vessel,,,
        AB001,Bronchitis | Respiratory Infection | Chest Infection | Cough | Shortness of Breath | Blood Tinged Phlegm | Severe Cough | Green Phlegm | Hacking Cough | Phlegm | Productive Cough | Infection in Chest,,,
*/


public class ReadCVS {
 
  public static void main(String[] args) {
 
	ReadCVS obj = new ReadCVS();
	obj.run();
 
  }
 
  public void run() {
 
	String csvFile = "C:\\wamp\\javaStuff\\team1\\TeamUtils\\carebundle_tabledata\\treatcond.csv";
	BufferedReader br = null;
	String line = "";
	String cvsSplitBy = "|";
 
	try {
 
		br = new BufferedReader(new FileReader(csvFile));
		while ((line = br.readLine()) != null) {
 
		        // use comma as separator
			String[] conditions = line.split(cvsSplitBy);
 
			System.out.println("Country [code= " + country[4] 
                                 + " , name=" + country[5] + "]");
 
		}
 
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	} finally {
		if (br != null) {
			try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
 
	System.out.println("Done");
  }
 
}
