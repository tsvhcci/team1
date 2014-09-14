package com.beingjavaguys.java;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;

/**
 * @author Nagesh Chauhan
 * 
 */
public class ReadCsv {
	public void readCsv() {
		String csvFileToRead = "csvFiles/csvToRead.csv";
		BufferedReader br = null;
		String line = "";
		String splitBy = ",";

		try {

			br = new BufferedReader(new FileReader(csvFileToRead));
			while ((line = br.readLine()) != null) {

				String[] cars = line.split(splitBy);
				System.out.println("CARS [year= " + cars[0] + " , make="
						+ cars[1] + " , model=" + cars[2] + " , description="
						+ cars[3] + " , price=" + cars[4] + "]");

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

		System.out.println("Done with reading CSV");
	}
}
