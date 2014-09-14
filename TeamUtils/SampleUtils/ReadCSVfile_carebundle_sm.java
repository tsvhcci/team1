import java.io.FileNotFoundException;
import java.io.IOException;

import com.csvreader.CsvReader;
/*
medical_behavior,cb_code,cb_name,cb_desc,consumer_nextsteps,main_cpt_code,simple_complex,cb_category,main_facility,health_category_name,icd9,icd10
M,AA002,Angiography - Aorta,,,36200,Complex,Inpatient,Hospital,Heart and Circulation,441.4,I71.4
M,AA001,Abdominal Aortic Aneurysm - Endovascular Repair,"An abdominal aortic aneurysm (AAA) is a dilation (bulging) in a section of the wall of the abdominal part of the aorta (the main artery in your body).  It is generally defined as a bulging of one and a half times the normal diameter of the aorta or a diameter greater than or equal to 3 cm or 1.2 inches.  As the aorta continues to enlarge over time, the risk that a life threatening rupture causing massive bleeding could occur increases. There are two ways to repair an aortic aneurysm.
> The size and shape of the aneurysm, as well as the condition of the arteries around the aneurysm, all determine whether a person is suitable for an endovascular repair.
This care path includes the costs for an endovascular repair.
","If you have any symptoms of an abdominal aortic aneurysm, make an appointment with your healthcare provider to discuss your options.  If you have symptoms of rupture of an AAA, as described above, you must seek medical attention immediately.
 Ask your healthcare provider the following questions.
> How long after surgery should I follow-up with you?",34802,Complex,Inpatient,Hospital,Heart and Circulation,441.4,I71.4
M,AA002,Angiography - Aorta,,,36200,Complex,Inpatient,Hospital,Heart and Circulation,441.4,I71.4
 */
public class CsvReaderExample {

	public static void main(String[] args) {
		try {
			
			CsvReader products = new CsvReader("C:\\wamp\\javaStuff\\team1\\TeamUtils\\carebundle_tabledata\\carebundle_sm.csv");
		
			products.readHeaders();

			while (products.readRecord())
			{
                //medical_behavior,cb_code,cb_name,cb_desc,consumer_nextsteps,main_cpt_code,simple_complex,cb_category,main_facility,health_category_name,icd9,icd10

                String medical_behavior = products.get("medical_behavior");
				String cb_code = products.get("cb_code");
				String cb_name = products.get("cb_name");
				String cb_desc = products.get("cb_desc");
				String consumer_info = products.get("consumer_info");
				String main_cpt_code = products.get("main_cpt_code");
				String simple_complex = products.get("simple_complex");
				String cb_category = products.get("cb_category");
				String main_facility = products.get("main_facility");
				String health_category_name = products.get("health_category_name");
                String icd9 = products.get("icd9");
                String icd10 = products.get("icd10");

				// perform program logic here, insert row into table
				System.out.println(cb_code + ":" + cb_code + " - " + cb_name);

			}
	
			products.close();
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
