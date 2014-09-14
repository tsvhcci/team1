package com.beingjavaguys.java;

/**
 * @author Nagesh Chauhan
 * 
 */
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.beingjavaguys.domain.Cars;

public class CsvToJavaObject {

	public void convertCsvToJava() {
		String csvFileToRead = "csvFiles/csvToRead.csv";
		BufferedReader br = null;
		String line = "";
		String splitBy = ",";
		List<Cars> carList = new ArrayList<Cars>();

		try {

			br = new BufferedReader(new FileReader(csvFileToRead));
			while ((line = br.readLine()) != null) {

				// split on comma(',')
				String[] cars = line.split(splitBy);

				// create car object to store values
				Cars carObject = new Cars();

				// add values from csv to car object
				carObject.setYear(cars[0]);
				carObject.setMake(cars[1]);
				carObject.setModel(cars[2]);
				carObject.setDescription(cars[3]);
				carObject.setPrice(cars[4]);

				// adding car objects to a list
				carList.add(carObject);

			}
			// print values stored in carList
			printCarList(carList);

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
	}

	public void printCarList(List<Cars> carListToPrint) {
		for (int i = 0; i < carListToPrint.size(); i++) {
			System.out.println("CARS [year= " + carListToPrint.get(i).getYear()
					+ " , make=" + carListToPrint.get(i).getMake()
					+ " , model=" + carListToPrint.get(i).getModel()
					+ " , description="
					+ carListToPrint.get(i).getDescription() + " , price="
					+ carListToPrint.get(i).getPrice() + "]");
		}
	}
}
