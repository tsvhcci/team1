-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.5.37-log


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ebdb
--

CREATE DATABASE IF NOT EXISTS ebdb;
USE ebdb;

--
-- Definition of table `carebundle`
--

DROP TABLE IF EXISTS `carebundle`;
CREATE TABLE `carebundle` (
  `geo_type` varchar(45) DEFAULT NULL,
  `geo_value` varchar(45) DEFAULT NULL,
  `cb_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) NOT NULL,
  `care_bundle_name` varchar(45) NOT NULL,
  `geo_avg_cost` int(10) DEFAULT NULL,
  `care_bundle_detail_desc_uri` varchar(45) DEFAULT NULL,
  `care_bundle_quality_uri` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`cb_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carebundle`
--

/*!40000 ALTER TABLE `carebundle` DISABLE KEYS */;
INSERT INTO `carebundle` (`geo_type`,`geo_value`,`cb_id`,`code`,`care_bundle_name`,`geo_avg_cost`,`care_bundle_detail_desc_uri`,`care_bundle_quality_uri`) VALUES 
 ('zip','55343',1,'BP007','Back Pain - Lumbar Laminectomy',48127,'/content/detail/cb/bp007.html','/content/quality/cb/bp007.html'),
 ('state','MN',2,'BP007','Back Pain - Lumbar Laminectomy',45221,'/content/detail/cb/bp007.html','/content/quality/cb/bp007.html'),
 ('usa','',3,'BP007','Back Pain - Lumbar Laminectomy',52122,'/content/detail/cb/bp007.html','/content/quality/cb/bp007.html'),
 ('msa','553',4,'BP007','Back Pain - Lumbar Laminectomy',47134,'/content/detail/cb/bp007.html','/content/quality/cb/bp007.html'),
 ('zip','55343',5,'BB002','Broken Arm - Emergency Room',1234,'/content/detail/cb/bp002.html','/content/quality/cb/bp002.html'),
 ('zip','55343',6,'OV003','Office Visit - Primary Doctor - New Patient -',1234,'/content/detail/cb/ov003.html','/content/quality/cb/ov003.html'),
 ('zip','55343',7,'OV015','Office Visit - Specialist - High Complexity',1234,'/content/detail/cb/ov015.html','/content/quality/cb/ov015.html'),
 ('zip','55343',8,'OV017','Wellness Visit - Established Female Patient -',1234,'/content/detail/cb/ov017.html','/content/quality/cb/ov017.html'),
 ('zip','55343',9,'CT005','CT Scan With Dye - Abdomen and Pelvis',1234,'/content/detail/cb/ct005.html','/content/quality/cb/ct005.html'),
 ('zip','55343',10,'EI001','Ear Infection - Acute',1234,'/content/detail/cb/ei001.html','/content/quality/cb/ei001.html'),
 ('zip','55343',11,'KA002','Knee Arthroscopy With ACL Surgery',1234,'/content/detail/cb/ka002.html','/content/quality/cb/ka002.html'),
 ('zip','55343',12,'MR008','MRI Scan With and Without Dye - Abdomen',1234,'/content/detail/cb/mr008.html','/content/quality/cb/mr008.html'),
 ('zip','55343',13,'US005','Ultrasound - Pregnancy',1234,'/content/detail/cb/us005.html','/content/quality/cb/us005.html'),
 ('zip','55343',14,'TH001','Hip Replacement',1234,'/content/detail/cb/th001.html','/content/quality/cb/th001.html'),
 ('zip','55343',15,'TK001','Knee Replacement',1234,'/content/detail/cb/tl001.html','/content/quality/cb/tk001.html'),
 ('zip','55343',16,'VA019','Vaccine - Flu - Adult at Convenience - Urgent',1234,'/content/detail/cb/va019.html','/content/quality/cb/va019.html'),
 ('zip','55343',17,'XR002','X-ray Abdomen',1234,'/content/detail/cb/xr002.html','/content/quality/cb/xr002.html'),
 ('zip','55343',18,'XR025','X-ray Lumbar Spine',1234,'/content/detail/cb/xr025.html','/content/quality/cb/xr025.html');
/*!40000 ALTER TABLE `carebundle` ENABLE KEYS */;


--
-- Definition of table `carebundlesteps`
--

DROP TABLE IF EXISTS `carebundlesteps`;
CREATE TABLE `carebundlesteps` (
  `cb_id_fk` int(10) unsigned DEFAULT NULL,
  `step_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `geo_avg_cost` int(10) unsigned DEFAULT NULL,
  `step_name` varchar(45) NOT NULL,
  `step_code` varchar(45) DEFAULT NULL,
  `step_detail_desc_uri` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`step_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `carebundlesteps`
--

/*!40000 ALTER TABLE `carebundlesteps` DISABLE KEYS */;
INSERT INTO `carebundlesteps` (`cb_id_fk`,`step_id`,`geo_avg_cost`,`step_name`,`step_code`,`step_detail_desc_uri`) VALUES 
 (1,1,2300,'Anesthesia Services','anes','/content/detail/step/anes.html'),
 (1,2,45000,'Hospital Facility - Inpatient Services','hospin','/content/detail/step/hospin.html'),
 (1,3,157,'Laboratory Services','lab','/content/detail/step/lab.html'),
 (1,4,120,'Office Visit - Primary Care Physician','ovpcp','/content/detail/step/ovpcp.html'),
 (1,5,230,'Office Visit - Specialist Consultation','ovsc','/content/detail/step/ovsc.html'),
 (1,6,320,'Physical Therapy','pt','/content/detail/step/pt.html'),
 (18,7,1234,'X-Ray of the Back','xray','/content/detail/step/xray.html');
/*!40000 ALTER TABLE `carebundlesteps` ENABLE KEYS */;


--
-- Definition of table `hello`
--

DROP TABLE IF EXISTS `hello`;
CREATE TABLE `hello` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hello`
--

/*!40000 ALTER TABLE `hello` DISABLE KEYS */;
INSERT INTO `hello` (`id`,`name`) VALUES 
 (1,'Veera'),
 (2,'Sree'),
 (3,'Tim');
/*!40000 ALTER TABLE `hello` ENABLE KEYS */;


--
-- Definition of table `ref_carebundle`
--

DROP TABLE IF EXISTS `ref_carebundle`;
CREATE TABLE `ref_carebundle` (
  `cb_code` varchar(45) DEFAULT NULL,
  `cb_name` varchar(145) DEFAULT NULL,
  `cb_desc` varchar(245) DEFAULT NULL,
  `cb_desc_uri` varchar(245) DEFAULT NULL,
  `consumer_info` varchar(700) DEFAULT NULL,
  `main_cpt_code` varchar(45) DEFAULT NULL,
  `simple_complex` varchar(45) DEFAULT NULL,
  `cb_category` varchar(85) DEFAULT NULL,
  `main_facility` varchar(45) DEFAULT NULL,
  `health_category_name` varchar(45) DEFAULT NULL,
  `icd9` varchar(45) DEFAULT NULL,
  `icd10` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_carebundle`
--

/*!40000 ALTER TABLE `ref_carebundle` DISABLE KEYS */;
INSERT INTO `ref_carebundle` (`cb_code`,`cb_name`,`cb_desc`,`cb_desc_uri`,`consumer_info`,`main_cpt_code`,`simple_complex`,`cb_category`,`main_facility`,`health_category_name`,`icd9`,`icd10`) VALUES 
 ('fasd','asdf','fdsa','asdf','fdas','asdf','asdf','asdf','asdf','asdf','asdf','asdf');
/*!40000 ALTER TABLE `ref_carebundle` ENABLE KEYS */;


--
-- Definition of table `ref_carebundlestep`
--

DROP TABLE IF EXISTS `ref_carebundlestep`;
CREATE TABLE `ref_carebundlestep` (
  `cb_code` varchar(45) DEFAULT NULL,
  `cb_step_code` varchar(45) DEFAULT NULL,
  `cb_step_name` varchar(145) DEFAULT NULL,
  `cb_step_desc` varchar(245) DEFAULT NULL,
  `service_category` varchar(45) DEFAULT NULL,
  `provider_type` varchar(45) DEFAULT NULL,
  `icd9` varchar(45) DEFAULT NULL,
  `icd10` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_carebundlestep`
--

/*!40000 ALTER TABLE `ref_carebundlestep` DISABLE KEYS */;
INSERT INTO `ref_carebundlestep` (`cb_code`,`cb_step_code`,`cb_step_name`,`cb_step_desc`,`service_category`,`provider_type`,`icd9`,`icd10`) VALUES 
 ('fsda','asdf','fasda','asdf','fdas','asdf','fdas','asdf');
/*!40000 ALTER TABLE `ref_carebundlestep` ENABLE KEYS */;


--
-- Definition of table `ref_carebundlestepservice`
--

DROP TABLE IF EXISTS `ref_carebundlestepservice`;
CREATE TABLE `ref_carebundlestepservice` (
  `cb_code` varchar(45) DEFAULT NULL,
  `cb_step_code` varchar(45) DEFAULT NULL,
  `service_code` varchar(45) DEFAULT NULL,
  `service_code_type` varchar(45) DEFAULT NULL,
  `step_service_name` varchar(145) DEFAULT NULL,
  `health_service_type` varchar(45) DEFAULT NULL,
  `primary_facility` varchar(45) DEFAULT NULL,
  `prim4step` varchar(45) DEFAULT NULL,
  `cpt4rev_rev4drg` varchar(45) DEFAULT NULL,
  `icd9` varchar(45) DEFAULT NULL,
  `icd10` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_carebundlestepservice`
--

/*!40000 ALTER TABLE `ref_carebundlestepservice` DISABLE KEYS */;
INSERT INTO `ref_carebundlestepservice` (`cb_code`,`cb_step_code`,`service_code`,`service_code_type`,`step_service_name`,`health_service_type`,`primary_facility`,`prim4step`,`cpt4rev_rev4drg`,`icd9`,`icd10`) VALUES 
 ('fasdf','asdf','asdf','asdf','asdf','asdf','asdf','fdsa','asdf','fdas','asdf');
/*!40000 ALTER TABLE `ref_carebundlestepservice` ENABLE KEYS */;


--
-- Definition of table `ref_cbcodecategory`
--

DROP TABLE IF EXISTS `ref_cbcodecategory`;
CREATE TABLE `ref_cbcodecategory` (
  `cb_code_cat` varchar(45) DEFAULT NULL,
  `cb_code_cat_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_cbcodecategory`
--

/*!40000 ALTER TABLE `ref_cbcodecategory` DISABLE KEYS */;
INSERT INTO `ref_cbcodecategory` (`cb_code_cat`,`cb_code_cat_name`) VALUES 
 ('fdas','asdf');
/*!40000 ALTER TABLE `ref_cbcodecategory` ENABLE KEYS */;


--
-- Definition of table `ref_servicename`
--

DROP TABLE IF EXISTS `ref_servicename`;
CREATE TABLE `ref_servicename` (
  `service_code` varchar(45) DEFAULT NULL,
  `service_name_display` varchar(145) DEFAULT NULL,
  `service_desc` varchar(245) DEFAULT NULL,
  `service_code_type` varchar(45) DEFAULT NULL,
  `service_tech_name` varchar(145) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_servicename`
--

/*!40000 ALTER TABLE `ref_servicename` DISABLE KEYS */;
INSERT INTO `ref_servicename` (`service_code`,`service_name_display`,`service_desc`,`service_code_type`,`service_tech_name`) VALUES 
 ('sadf','asdf','asdf','asdf','asdf');
/*!40000 ALTER TABLE `ref_servicename` ENABLE KEYS */;


--
-- Definition of table `ref_treatcond`
--

DROP TABLE IF EXISTS `ref_treatcond`;
CREATE TABLE `ref_treatcond` (
  `cb_code` varchar(45) DEFAULT NULL,
  `treatcond_keywords` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ref_treatcond`
--

/*!40000 ALTER TABLE `ref_treatcond` DISABLE KEYS */;
INSERT INTO `ref_treatcond` (`cb_code`,`treatcond_keywords`) VALUES 
 ('AA001','AAA |  Endovascular Repair | Aortic Aneurysm | Aneurysm | Aorta | Rupture | Bulging'),
 ('AA002','Artery | Aorta | Plaque | Vessel'),
 ('AB001','Bronchitis | Respiratory Infection | Chest Infection | Cough | Shortness of Breath | Blood Tinged Phlegm | Severe Cough | Green Phlegm | Hacking Cough | Phlegm | Productive Cough | Infection in Chest'),
 ('AB002','Cough | COPD | Bronchitis | Emphysema | Chronic Bronchitis | Blood Tinged Phlegm | Green Phlegm | Phlegm | Productive Cough'),
 ('AB003','Cough | Exercise Induced Asthma | Breathing Difficulty | Wheezing | Green Phlegm | Phelgm | Productive Cough'),
 ('AB004','Respiratory Infection | Chest Infection | Cough | Shortness of Breath | Blood Tinged Phlegm | Severe Cough | Green Phlegm | Hacking Cough | Phlegm | Productive Cough | Infection in Chest'),
 ('AC001','Cystic Acne | Pimples'),
 ('AC002','Cancer of Skin | Skin Biopsy | Biopsy Skin | Remove Mole'),
 ('AC003','Abscess | Drain | Incision | Infection | Pus | Lance | Boil | Lesion | Draining'),
 ('AC004','Pilonidal Cyst | Cyst | Excision'),
 ('AE001','Needles | Alternative Medicine'),
 ('AF001','Fungus | Fungal Infection of Feet | Ringworm of Feet'),
 ('AP001','Ankle Pain | Ankle Strain | Ankle Injury | Hurt Ankle'),
 ('AP002','Ankle Pain | Ankle Injury | Hurt Ankle | Arthroscopy'),
 ('AR001','Rash | Dermatitis | Itching | Blisters | Hives | Red Skin | Allergic Reaction | Painful Rash | Poison Ivy | Poison Oak | Poison Sumac | Skin Breakout | Skin Problems | Skin Rash'),
 ('AR002','Schistosomiasis | Rash'),
 ('AR003','Rash | Dermatitis | Itching | Blisters | Red Skin | Painful Rash | Atopic Dermatitis | Skin Rash | Flaky Skin | Dry Skin | Allergic Rash | Skin Problems'),
 ('AS001','Allergies | Eyes Itch | Itchy Eyes | Hayfever | Nasal Congestion | Runny Eyes | Runny Nose | Sneezing | Watery Eyes | Allergic Reaction'),
 ('AS002','Allergies | Allergic | Scratch Test | Intradermal Test | RAST test | Skin Test'),
 ('AS003','Allergies | Allergic | Allergy Shots | Allergy Injections | Immunotherapy'),
 ('AY001','Appendix | Laparoscopic Appendectomy | Appendicitis | Removal of Appendix | Inflamed Appendix'),
 ('AY002','Appendix | Laparoscopic Appendectomy | Appendicitis | Removal of Appendix | Inflamed Appendix '),
 ('BB001','Fracture | Arm | Wrist'),
 ('BB002','Fracture | Arm | Wrist'),
 ('BB003','Fracture | Finger'),
 ('BB004','Fracture | Finger'),
 ('BB005','Fracture | Foot'),
 ('BB006','Fracture | Foot'),
 ('BB007','Fracture | Leg'),
 ('BB008','Fracture | Leg'),
 ('BC001','IUD | Birth Control | Intrauterine Device | Mirena | Copper IUD | Contraception | Levonorgestrel | Progestin | Family Planning'),
 ('BC002','Cut and Tie Tubes | Ligation | Sterilization | Permanent Birth Control | Birth Control | Family Planning | Tubes Tied | Female Sterilization'),
 ('BD001','Phlebotomy | Lab Draw | Venipuncture'),
 ('BI001','Bladder Infection | Bad Smelling Urine | Burning Urination | Frequent Urination | Cystitis | Painful Urination | Test for Urinary Tract Infection |  Urethritis | UTI'),
 ('BP002','Doctor Visit for Back Pain | Primary Care Visit for Back Pain | Back Pain | Pain in Back | Lower Back Pain | Pain in Lower Back | Back Strain | Stiff Back | Bad Back | Sore Back | Back Pain - Office Visit'),
 ('BP004','Exercises for Back Pain | Back Exercises | Back Pain | Back Pain Exercises | Back Strain | Bad Back | Lower Back Pain | Pain in Back | Pain in Lower Back | Sore Back | Stiff Back | Physical Therapy | Back Pain - Exercises | Back Pain - Exercises'),
 ('BP005','Chiropractic Adjustment for Back Pain | Chiropractic Manipulation for Back Pain | Back Pain | Back Strain | Chiropractic Care | Lower Back Pain | Pain in Lower Back | Stiff Back | Sore Back | Bad Back | Back Adjustment | Pain in Back | Bad Back | Adjustment | Back Pain - Manipulation'),
 ('BP006','Steroid Injection for Back Pain | Epidural Injection for Back Pain | Back Pain | Back Shot | Lower Back Pain | Pain in Back | Pain in Lower Back | Steroid | Back Pain - Injection'),
 ('BP007','Laminectomy | Surgery on Back | Pain in Back | Lamina Removal | Back Surgery | Lumbar Laminectomy'),
 ('BP008','Fusion | Surgery on Back | Pain in Back | Vertebrae Fusion | Back Surgery | Curvature of Spine | Join Vertebrae | Fuse Vertebrae | Scoliosis | Lumbar Fusion'),
 ('BP009','Diskectomy | Discectomy | Surgery on Back | Pain in Back | Removal of Disk | Back Surgery | Herniated Disk | Diskectomy'),
 ('BP010','Chiropractic Adjustment for Back Pain | Chiropractic Manipulation for Back Pain | Back Pain | Back Strain | Chiropractic Care | Lower Back Pain | Pain in Lower Back | Stiff Back | Sore Back | Bad Back | Back Adjustment | Pain in Back | Bad Back | Adjustment | Back Pain - Manipulation'),
 ('BP011','Back Pain | Back Shot | Lower Back Pain | Pain in Back | Pain in Lower Back | Lumbar | Myelogram'),
 ('BR001','Reconstruction | Breast | Mastectomy'),
 ('BS001','Bursa | Shoulder'),
 ('CA001','Endarterectomy | Plaque | CEA '),
 ('CB001','Childbirth | Vaginal Childbirth | Normal Childbirth | Birth | Pregnancy | Maternity | Vaginal Delivery | Natural Childbirth'),
 ('CB002','Childbirth | Cesarean Childbirth | Birth | Section | Pregnancy | Maternity | C-Section | C-section Childbirth'),
 ('CC001','Cold | Cough | Headache | Nasal Congestion | Nasopharyngitis | Runny Nose | Sneezing | Nasal Drainage'),
 ('CF001','Fusion | Surgery on Neck | Pain in Neck | Vertebrae Fusion | Neck Surgery | Curvature of Spine | Join Vertebrae | Fuse Vertebrae | Kyphosis | Cervical Fusion'),
 ('CF002','Doctor Visit for Neck Pain | Primary Care Visit for Neck Pain | Neck Pain | Pain in Neck | Stiff Neck | Sore Neck | Cervicalgia'),
 ('CM005','Chiropractic Care | Chiropractic Adjustment | Adjustment | Chiropractic Adjustment '),
 ('CP001','Chicken Pox | Chickenpox Shot | Chickenpox Vaccine | Varicella | Varicella-Zoster | Rash | Chicken Pox Shot | Chicken Pox Vaccine | Chicken Pox Immunization | Chickenpox Immunization | Immunization Chicken Pox | Immunization Chickenpox | Vaccine Chickenpox | Vaccine Chicken Pox | Varicella Vaccine'),
 ('CR001','Biopsy | Breast Biopsy | Needle Biopsy'),
 ('CR002','Cancer of Breast | Ductal Cancer | Lobular Cancer | HER2-Positive Cancer | ER-Positive Cancer | In Situ | BRCA1 | BRCA2 | Mastectomy | Removal of Breast | Breast Removal'),
 ('CR003','Cancer of Breast | Ductal Cancer | Lobular Cancer | HER2-Positive Cancer | ER-Positive Cancer | In Situ | BRCA1 | BRCA2 | Radiotherapy | Radio Therapy'),
 ('CR004','Cancer of Breast | Ductal Cancer | Lobular Cancer | HER2-Positive Cancer | ER-Positive Cancer | In Situ | BRCA1 | BRCA2 | Chemo | Chemotherapy'),
 ('CR005','Cancer of Skin | Skin Biopsy | Biopsy Skin | Melanoma | Nonmelanoma | Mohs Surgery'),
 ('CR006','Biopsy | Cervix Biopsy'),
 ('CR007','Cancer of Cervix | Hysterectomy | Removal of Uterus | Uterus Removal | Uterus Removal'),
 ('CR008','Colon Biopsy | Biopsy Colon'),
 ('CR009','Cancer of Colon | Bowel Cancer | Intestine Cancer | Colon Biopsy | Biopsy Colon | Colectomy | Removal of Colon | Colon Removal | Partial Colectomy | Partial Removal of Colon | Partial Colon Removal'),
 ('CR010','blank condition'),
 ('CR011','Esophagus Biopsy'),
 ('CR013','blank condition'),
 ('CR014','Cancer of Esophagus | In Situ | Esophagus Cancer | Radiotherapy | Radio Therapy'),
 ('CR015','Biopsy Thyroid | Thyroid Biopsy'),
 ('CR016','Cancer of Thyroid | Thyroid Cancer | Thyroidectomy | Removal of Thyroid | Thyroid Removal | Needle Biopsy'),
 ('CR017','blank condition'),
 ('CR018','Cancer of  Thyroid | Thyroid Cancer | Radiotherapy | Radio Therapy'),
 ('CR019','blank condition'),
 ('CR020','blank condition'),
 ('CR021','blank condition'),
 ('CR022','Biopsy Bladder | Bladder Biopsy | Bladder Test'),
 ('CR023','Cystoscopy | Fulguration | Bladder Cancer | Cancer of Bladder'),
 ('CR024','Cancer of Bladder | Bladder Cancer | Cystectomy | Removal of Bladder | Bladder Removal'),
 ('CR025','blank condition'),
 ('CR028','Blood Tinged Phlegm | BP'),
 ('CR029','Blood Tinged Phlegm | Cancer of Lung | Lung Cancer | Radiotherapy | Radio Therapy'),
 ('CR030','Testicle Biopsy | Biopsy'),
 ('CR031','Cancer of Testicle | Orchiectomy | Removal of Testicle | Testicle Removal'),
 ('CR032','blank condition'),
 ('CR033','Cancer of Testicle | Orchiectomy | Removal of Testicle | Testicle Removal | Radiotherapy | Radio Therapy'),
 ('CR034','Biopsy | Kidney Biopsy | Needle Biopsy'),
 ('CR035','Cancer of Kidney | Kidney Cancer | Nephrectomy | Removal of Kidney | Kidney Removal'),
 ('CR036','Biopsy Head | Biopsy Neck | Head Biopsy | Neck Biopsy | Mouth Biopsy | Throat Biopsy | Tongue Biopsy | Biopsy'),
 ('CR037','Cancer of Head | Cancer of the Neck | Cancer of the Mouth | Head Cancer | Neck Dissection |  Dissection | Lymph Node Removal | Throat Cancer |  Cervical Lymphadenectomy | Lymphadenectomy'),
 ('CR038','blank condition'),
 ('CR039','Cancer of Head | Cancer of the Neck | Cancer of the Mouth | Head Cancer | Mouth Cancer | Throat Cancer |  Radiotherapy | Radio Therapy'),
 ('CR040','Prostate Biopsy | Biopsy | Needle Biopsy'),
 ('CR041','Cancer of Prostate | Prostatectomy | Removal of Prostate | Prostate Removal'),
 ('CR042','blank condition'),
 ('CR043','Cancer of  Prostate | Prostate Cancer | Radiotherapy | Radio Therapy | Brachytherapy'),
 ('CS001','Screening Colonoscopy | Colon Scan | Colonoscopy | Colorectal Cancer Screening | Cancer Screening | Colon Cancer | Preventative Exam | Preventive Screening | Preventive Exam | Screening Colonoscopy'),
 ('CS002','Diagnostic Colonoscopy | Colon Scan | Colonoscopy | Colon Cancer | Diagnostic Colonoscopy'),
 ('CS003','Diagnostic Colonoscopy | Colon Scan | Colonoscopy | Colon Cancer | Polyp Removal'),
 ('CS004','Screening Colonoscopy | Colon Scan | Colonoscopy | Colon Cancer | Polyp Removal'),
 ('CT001','Abdominal CT Scan | Abdominal CAT Scan | Abdominal Scan | CAT Scan of Abdomen With Contrast'),
 ('CT002','Chest CT Scan | Chest CAT Scan | CAT Scan of Chest With Contrast'),
 ('CT003','Pelvic CT Scan | Pelvic CAT Scan | Abdominal and Pelvic CT Scan | CAT Scan of Pelvis With Contrast'),
 ('CT004','Head or Brain CT Scan | Head or Brain CAT Scan | Brain Scan | CAT Scan of Head or Brain Without Contrast'),
 ('CT005','Abdominal and Pelvic CT Scan | Abdominal and Pelvic CAT Scan | Abdominal CAT Scan | Abdominal CT Scan | Abdominal Scan | Pelvic CT Scan | Pelvic CAT Scan | CAT Scan of Abdomen and Pelvis With Contrast'),
 ('CT006','Facial CT Scan | Facial CAT Scan | Facial Bones | Jaw | CAT Scan of Face Without Contrast'),
 ('CT007','Abdominal CT Scan | Abdominal CAT Scan | Abdominal Scan | CAT Scan of Abdomen Without Contrast'),
 ('CT008','Abdominal CT Scan | Abdominal CAT Scan | Abdominal Scan | CAT Scan of Abdomen With and Without Contrast'),
 ('CT009','Pelvic CT Scan | Pelvic CAT Scan | Abdominal and Pelvic CT Scan | CAT Scan of Pelvis Without Contrast'),
 ('CT010','Chest Angiography CT Scan | Chest Angiography CAT Scan | Chest CAT Scan | Chest CT Scan | CAT Scan of Chest With Angiography'),
 ('CT011','blank condition'),
 ('CT012','blank condition'),
 ('CT013','blank condition'),
 ('CT014','blank condition'),
 ('CT015','blank condition'),
 ('CT016','blank condition'),
 ('CT017','blank condition'),
 ('CT018','blank condition'),
 ('CT019','blank condition'),
 ('CT020','blank condition'),
 ('CT021','blank condition'),
 ('CT022','blank condition'),
 ('CT023','blank condition'),
 ('CV001','Cardiovascular Stress Test | Heart Disease | Heart Problem | Heart Rhythm | Heart Stress Test | Stress Test | Coronary Artery | Cardiac Stress Test'),
 ('CV004','Cardiovascular Stress Test With Ultrasound | Cardiovascular Stress Test | Cardiac Stress Test with Echo | Echocardiogram | Heart Disease | Heart Problem | Heart Rhythm | Heart Stress Test | Heart Ultrasound | Stress Echo | Stress Test | Echo | Ultrasound | Coronary Artery | Cardiovascular Ultrasound | Blood Flow | Cardiac Stress Test With Echo'),
 ('CV005','Heart Ultrasound | Heart Problem | Heart Disease | Echo | Echocardiogram | Heart Defects | Birth Defect | Blood Flow | Ultrasound of Heart for Birth Defects'),
 ('CV006','Echocardiogram | Echo | Heart Ultrasound | Blood Flow | Doppler | Heart Defects | Heart Disease | Heart Problem | Coronary Artery | Ultrasound of Heart With Blood Flow Mapping'),
 ('CV007','CAD | Coronary Heart Disease | CHD | Arteriosclerosis | Atherosclerosis | Hardening of the Arteries | Heart Artery Disease | Blood Pressure | Blood Pressure | Coronary Artery Disease | Diastolic | BP | Heart Rate | Myocardial Infarction | Plaque | Positive Stress Test'),
 ('CV008','A-Fib | Irregular Heartbeat | EP Studies'),
 ('CV009','Myocardial Infarction | Chest Pain | Angina'),
 ('CV010','TEE | Esophageal Echo | Echo'),
 ('CV011','EP Studies'),
 ('CY001','Bladder Scope | Urethra Scope | Scope | Exam of Bladder | Exam of Urethra | Bad Smelling Urine | Burning Urination | Frequent Urination | Painful Urination | Cystourethroscopy'),
 ('DC001','Chest Pain | Catheterization | Cardiac | Plaque | Vessels | Arteries | Positive Stress Test | Heart Attack | Heart Muscle Damage | Heart Disease | Coronary Artery Disease | Heart Defects | Heart Problem | Myocardial Infarction | Cardiac Catheterization - Diagnostic'),
 ('DC002','Angioplasty | Stent | Drug-Eluting | Chest Pain | Catheterization | Cardiac | Heart | Plaque | Vessels | Arteries | Clogged Artery | Balloon | Myocardial Infarction | Positive Stress Test | Angioplasty of Coronary Artery with Drug-Eluting Stent'),
 ('DC003','Angioplasty | Chest Pain | Catheterization | Cardiac | Heart | Plaque | Vessels | Arteries | Clogged Artery | Balloon | Myocardial Infarction | Positive Stress Test | Angioplasty of Coronary Artery'),
 ('DC004','Angioplasty | Stent | Non-Drug-Eluting | Chest Pain | Catheterization | Cardiac | Heart | Plaque | Vessels | Arteries | Clogged Artery | Balloon | Bare Metal Stent | Myocardial Infarction | Positive Stress Test'),
 ('DC005','Bypass | CABG | Open Heart | Heart Surgery | Coronary Artery Bypass Graft'),
 ('DC006','Defibrillator | ICD | Irregular Heartbeat'),
 ('DC007','Valve | Aortic | Pulmonary | Mitral | Tricuspid'),
 ('DC008','Pacemaker'),
 ('DC009','Pacemaker'),
 ('DC010','Artery | Arteries | Leg Pain | Arm Pain | Plaque | Vessels | Extremity'),
 ('DM001','Mellitus | Gestational Diabetes | High Blood Sugar | Hyperglycemia | Hypoglycemia | Low Blood Sugar | Type 1 | Type 2 | Blood Sugar | Sugar '),
 ('EI001','Ear Infection | Infection in Ear | Pain in Ear | Hearing Loss | Hearing Problems | Cannot Hear | Dizziness | Ear Drainage | Ear Hurts | Ear Pain | Ear Plugged | Fluid in Ear | Sore Ear | Swimmers Ear | Ear Infection - Acute'),
 ('EI002','Chronic Ear Infection | Ear Infection | Infection in Ear | Pain in Ear | Tubes in Ear | Ear Tubes | Tympanostomy | Hearing Loss | Hearing Problems | Cannot Hear | Dizziness | Ear Drainage | Ear Hurts | Ear Pain | Ear Plugged | Fluid in Ear | Sore Ear | Ear Infection - Chronic with Tympanostomy'),
 ('EI003','Outer Ear Infection | Otitis Externa | Ear Infection | Infected Ear'),
 ('EI004','Presbycusis | Deafness | Deaf | Loss of Hearing | Age Related Hearing Loss | Hearing Loss'),
 ('EK001','EKG | ECG | Heart Problem | Heart Rate | Heart Rhythm | Electrocardiogram'),
 ('EK002','EEG | Brain Wave Recording | Seizures | Epilepsy'),
 ('EK003','EMG | Muscle Electrical Activity | Myogram | Neuromuscular Disease | Muscle Wave Recording'),
 ('ER004','ER Visit | Heart Attack | ER | Emergency Department Visit'),
 ('ER011','Urgent Care Clinic | Convenience Care Clinic | CCC | UCC | Clinic'),
 ('FS001','\"Foot Surgery | Hallux Valgus Correction | Bunionectomy \n\n\"'),
 ('GB001','Gastric Bypass | Bariatric Surgery | Weight Loss Surgery | Roux-en-Y | Weight Gain'),
 ('GB002','Lapband | Lap Band | Gastric Banding | LAGB | Adjustable Gastric Banding | Bariatric Surgery | Weight Loss Surgery | Lap Band Surgery | Weight Gain'),
 ('GB003','Gastric Bypass | Bariatric Surgery | Weight Loss Surgery | Weight Gain | Sleeve'),
 ('GL001','Gallbladder | Laparoscopic Gallbladder Removal | Abdominal Pain | Surgery on Gallbladder | Cholecystectomy'),
 ('GL002','Gallbladder | Open Gallbladder Removal | Abdominal Pain | Surgery on Gallbladder | Cholecystectomy'),
 ('GT001','Big Toe | Toe Pain | Pain in Toe | Swollen Toe'),
 ('HB001','Acid Reflux | Upset Stomach | Nausea | Burning in Throat | Burning in Chest | Sour Stomach | Reflux | GERD | Belching | Burping | Regurgitation | Esophagitis | Gastroesophageal Reflux Disease | Stomach Ache | Stomach Disorder | Stomach Pain | Stomach Upset | Indigestion'),
 ('HC001','Cholesterol | Fats | Lipids | Hypercholesterolemia | Dyslipidemia | HDL | LDL | Hyperlipidemia'),
 ('HI001','Allergy | Rash | Dermatitis | Itching | Blisters | Red Skin'),
 ('HL001','Lice | Pediculosis | Nits'),
 ('HP001','Elevated Blood Pressure | Blood Pressure | BP | Systolic | Diastolic | Hypertension | Hypertension'),
 ('HR001','Inguinal Hernia Repair | Groin Hernia Repair | Repair Hernia | Hernia Surgery | Laparoscopic Inguinal Hernia Repair'),
 ('HR002','Inguinal Hernia Repair | Groin Hernia Repair | Repair Hernia | Hernia Surgery | Open Inguinal Hernia Repair'),
 ('HR003','Small Intestine Removal | Laparoscopic Small Intestine Removal | Surgery on Small Intestine | Small Bowel Removal | Laparoscopic Small Bowel Removal | Surgery on Small Bowel | Bowel Surgery | Enterectomy | Partial Removal of Small Intestine | Partial Small Intestine Removal | Partial Removal of Small Bowel | Partial Small Bowel Removal'),
 ('HR004','Fundoplasty | Esophagus | Esophageal | Heartburn | Repair Hernia | Hernia Surgery'),
 ('HR005','Hemorrhoids | Removal of Hemorrhoids | Hemorrhoidectomy'),
 ('HR006','Abdominal Hernia Repair | Repair Hernia | Hernia Surgery | Abdomen Hernia'),
 ('HR007','Abdominal Hernia Repair | Repair Hernia | Hernia Surgery | Abdomen Hernia'),
 ('HR008','Small Intestine Removal | Open Small Intestine Removal | Surgery on Small Intestine | Small Bowel Removal | Open Small Bowel Removal | Surgery on Small Bowel | Bowel Surgery | Enterectomy | Partial Removal of Small Intestine | Partial Removal of Small Bowel'),
 ('HR009','Ulcerative Colitis'),
 ('HR010','blank condition'),
 ('HR011','blank condition'),
 ('HT001','Uterus Scope | Scope of Uterus | Exam of Uterus | Hysteroscopy'),
 ('HT002','Uterus Scope | Scope of Uterus | Exam of Uterus | Hysterosalpingogram | Uterus X-ray | X-ray Uterus'),
 ('HT003','Loss of Fetus | Loss of Baby | Baby Loss | Miscarriage | Dilation and Curettage'),
 ('HY001','Hysterectomy | Uterus Removal | Removal of Uterus | Womb Removal | Removal of Womb | Abdominal Hysterectomy'),
 ('HY002','Hysterectomy | Uterus Removal | Removal of Uterus | Womb Removal | Removal of Womb | Vaginal Hysterectomy'),
 ('HY003','Fallopian Tube Removal | Removal of Fallopian Tube | Removal of Ovary | Oophorectomy | Salpingoectomy | Ovary Removal | Removal of Ovaries and Fallopian Tubes'),
 ('HY004','Hysterectomy | Uterus Removal | Removal of Uterus | Womb Removal | Removal of Womb '),
 ('HY005','Myomectomy | Fibroid Removal | Removal of Fibroid | Fibroids'),
 ('HY006','Uterus Scope | Scope of Uterus | Exam of Uterus | Hysteroscopy | Laparoscopy | Lesion Removal'),
 ('HY007','AUB | Vaginal Bleeding | Endometrial Ablation | Hysteroscopy'),
 ('HY009','AUB | Vaginal Bleeding  '),
 ('HY010','Sling Operation | Incontinence '),
 ('HY011','blank condition'),
 ('HY012','Ovary | Cyst | Aspiration'),
 ('HY013','Ovary | Cyst | Removal'),
 ('HY014','Pessary | Fitting'),
 ('IF001','Achy | Cough | Fever | Flu | Flu Shot | Flu Test | Flu Vaccine | Headache | Influenza Shot | Influenza Vaccine | Nausea | Throwing Up | Upset Stomach | Vomiting'),
 ('IN002','Osteoarthritis | Joint Pain | Knee Pain | Injection | Steroid | Hyaluronic Acid | Cortisone Shot | Arthritis | Injection of Knee'),
 ('IT001','Toenail | Remove Toenail'),
 ('KA001','Torn Meniscus | Meniscus Tear | Knee Meniscus | Knee Arthroscopy | Meniscus Repair | Arthroscopic Surgery | Arthroscopy | Knee Pain | Knee Surgery | Knee Injury | Torn Cartilage | Blown Knee | Meniscus Repair via Arthroscopy'),
 ('KA002','Torn ACL | ACL Tear | Anterior Cruciate Ligament Tear | Knee Arthroscopy | Ligament Attachment (ACL Repair) | Knee Ligament | ACL Reconstruction | Blown Knee | Blown ACL | Arthroscopic Surgery | Arthroscopy | Knee Injury | Knee Pain | Knee Surgery | Ligament Damage | Torn Ligament | ACL Repair via Arthroscopy'),
 ('KI001','Knee Strain | Knee Injury | Hurt Knee | Knee Pain'),
 ('LD001','Tick Bite'),
 ('LI001','Cataract Surgery | Cataract Removal | Lens Implant | Blurred Vision | Cataracts'),
 ('LI002','Eye Pressure | Eye Surgery | Eye Shunt'),
 ('LT001','Thyroid | Fatigue | Hypothyroidism | Weight Gain | Goiter | Hypothyroid | Thyroid Gland | Thyroid Releasing Hormone | Thyroid Stimulating Hormone | Thyrotropin | Thyroxine | Triiodothyronine | TRH | TSH | Hypothyroid'),
 ('LW001','TSH Blood Test | Blood Test for Thyroid Disorder | Hyperthyroid Test | Hypothyroid Test | Thyroid Blood Test | Thyroid Function | Goiter | Hyperthyroidism | Hypothyroidism | Thyroid Gland | Thyrotropin | Thyroid Releasing Hormone | Thyroid Stimulating Hormone | TRH Blood Test | Thyroid | TRH | TSH'),
 ('LW002','CBC Blood Test | Blood Count | Blood Test for General Health | Hemoglobin Test | HCT Blood Test | HGB Blood Test | Red Blood Cell | White Blood Cell'),
 ('LW003','Metabolic Panel - Complete | Alanine Transaminase | Albumin | Alkaline Phosphatase | ALT | Aspartate Aminotransferase | AST | Bilirubin | Blood Urea Nitrogen | BUN | Calcium | Carbon Dioxide | Chloride | CMP Blood Test | CO2 | Creatinine | Glucose Test | Potassium Test | Protein | Sodium | Kidney Failure | Complete Metabolic Blood Test'),
 ('LW004','A1c Blood Test | HbA1c | Diabetes Monitoring | Diabetes Screening | Blood Sugar Test | Hemoglobin A1c | Average Blood Sugar'),
 ('LW005','Cholesterol Screening | High Cholesterol Monitoring | Cholesterol Test | Lipid Panel | Lipid Test | Lipids | Cholesterol | Fats | HDL | LDL'),
 ('LW006','Urine Test Without Microscope | Urine Test Automated | Urine Analysis | Bladder Infection | Kidney Infection | Kidney Stones | Urine Test for Bladder Infection | UTI Test | Kidney Failure | Urinary Tract Infection | Kidney Damage | Kidney Disease | Urine Protein Test | Stones'),
 ('LW007','Level of Vitamin D | Blood Test for Vitamin D | Vitamin D Blood Test'),
 ('LW008','Body Fluids Culture | Wound Culture | Culture of Body Fluids'),
 ('LW009','Culture of Urine | UTI Test | Test for Urinary Tract Infection | Urine Test for Bladder Infection | Urinary Tract Infection | Urine Culture | Urine Test | Culture of Urine'),
 ('LW010','BMP Blood Test | Metabolic Panel - Basic | Calcium | Carbon Dioxide | Chloride | Creatinine | Glucose Test | Potassium Test | Sodium | Blood Urea Nitrogen | BUN | Kidney Failure'),
 ('LW011','Blood Test for General Health | General Health Blood Test | Metabolic Panel - Complete | Alanine Transaminase | Albumin | Alkaline Phosphatase | ALT | Aspartate Aminotransferase | AST | Bilirubin | Blood Urea Nitrogen | BUN | Calcium | Carbon Dioxide | Chloride | CMP Blood Test | CO2 | Creatinine | Glucose Test | Potassium Test | Protein | Sodium | CBC Blood Test | Blood Count | Hemoglobin Test | HCT Blood Test | HGB Blood Test | Red Blood Cell | White Blood Cell | TSH Blood Test | Blood Test fo'),
 ('LW012','Sexually Transmitted Disease Test - Gonorrhea | Test for Gonorrhea | STD | Sexually Transmitted Infection | STI'),
 ('LW013','Liver Function Tests | Blood Test for Liver Function | Liver Disease | Liver Damage | Hepatic Function Panel'),
 ('LW014','PSA Blood Test | Prostate Cancer Screening | Prostate Specific Antigen | PSA | Prostate Cancer Screening'),
 ('LW015','Sexually Transmitted Disease Test - Chlamydia | Test for Chlamydia | STD | Sexually Transmitted Infection | STI'),
 ('LW016','Sexually Transmitted Disease Test - Human Papillomavirus | Cervical Cancer Screening | Genital Warts | Sexually Transmitted Infection | STD | STI | Human Papilloma Virus | HPV'),
 ('LW017','T4 Blood Test | Thyroid Blood Test | Hyperthyroid Test | Hypothyroid Test | Thyroid Function | Thyroid Gland | Goiter | Hyperthyroidism | Hypothyroidism | Thyroxine | Blood Test for Thyroid Disorder | Thyroid | TRH | TSH'),
 ('LW018','Clotting Time | Prothrombin time'),
 ('LW019','Pap Test | Pap Screen | Cervical Cancer Screening | Cervical Cancer Screening'),
 ('LW020','CK Blood Test | Heart Muscle Damage | Heart Attack | Myocardial Infarction | Muscle Enzyme Blood Test'),
 ('LW021','Urine Pregnancy Test | Pregnancy Test | HCG Urine Test'),
 ('LW023','Blood in Stool Test | Blood Occult | Colorectal cancer screening | Occult Blood'),
 ('LW024','CRP Blood Test | CRP - Inflammation Blood Test | Lupus | Blood Test for Inflammation'),
 ('LW025','Kidney Blood Test | Creatinine - Kidney Blood Test | Kidney Disease | Kidney Failure | Kidney Infection | Kidney Damage'),
 ('LW026','GGT Blood Test | Liver Disease | Liver Damage | Liver Function Tests | Liver Enzyme Test'),
 ('LW027','Diabetes Screening | Diabetes Monitoring | Blood Sugar Test | Fasting Blood Sugar | Gestational Diabetes | Glucose Test | High Blood Sugar | Hyperglycemia | Hypoglycemia | Low Blood Sugar'),
 ('LW028','Body Fluids Screening for Bacteria | Body Fluids Culture | Screening Culture of Body Fluids'),
 ('LW029','Throat Culture | Strep Throat | Sore Throat | Strep Throat - Group A Strep'),
 ('LW030','HCT Blood Test | Anemia | Red Blood Cell | Red Blood Cells Test'),
 ('LW031','HGB Blood Test | Anemia | Red Blood Cell'),
 ('LW032','Flu Test'),
 ('LW033','LDH Blood Test | Anemia | B-12 Test | Vitamin B-12'),
 ('LW034','ESR Blood Test | ESR - Inflammation Blood Test | ESR Inflammation Test | Inflammation Test | Rheumatoid Arthritis | Sedimentation Rate'),
 ('LW035','PPD Test | TB Screening | TB Testing | TB Test Reading | Tuberculosis Testing | Tuberculosis Test Reading | Tuberculosis Skin Test'),
 ('LW036','T3 Blood Test | Triiodothyronine | Hyperthyroid Test | Hyperthyroidism | Hypothyroid Test | Hypothyroidism | Thyroid Gland | Blood Test for Thyroid Disorder | Thyroid Blood Test | Goiter | Thyroid Function | TRH | TSH'),
 ('LW037','Uric Acid Blood Test | Gout | Kidney Disease | Kidney Stones | Stones'),
 ('LW038','Urine Test With Microscope | Urine Test Non-Automated | Urine Analysis | Bladder Infection | Kidney Infection | Kidney Stones | Urine Test for Bladder Infection | UTI Test | Urinary Tract Infection | Urine Protein Test | Stones'),
 ('LW039','Urine Protein Test | Kidney Damage | Kidney Disease | Kidney Failure | Kidney Infection | Microalbumin - Kidney Urine Test | Protein in Urine | Albumin | Protein in Urine Test'),
 ('LW040','Achy | Fever | Headache | Mono | Kissing Disease | Sore Throat | Tiredness | Fatigue | Swollen Spleen | Monospot'),
 ('LY001','Extracorporeal Shock Wave Lithotripsy | Shock Wave Lithotripsy | Laser Lithotripsy | ESWL | Kidney Stones | Stones in Kidney | Stones'),
 ('LY002','Stones in Kidney | Stones'),
 ('MG001','Headache | Aura | Flashing lights | Sensitivity to light | Sensitivity to sound | Light Sensitivity | Sound Sensitivity'),
 ('MH001','blank condition'),
 ('MH002','blank condition'),
 ('MH003','blank condition'),
 ('MH004','blank condition'),
 ('MH005','blank condition'),
 ('MH006','blank condition'),
 ('MH007','blank condition'),
 ('MH008','blank condition'),
 ('MH009','blank condition'),
 ('MH010','blank condition'),
 ('MO001','Achy | Fever | Headache | Mono | Kissing Disease | Sore Throat | Tiredness | Fatigue | Swollen Spleen | Monospot'),
 ('MP001','Testosterone | Male Problems | Low T'),
 ('MR001','Brain MRI With and Without Dye | Brain Scan | MRI Brain With and Without Contrast | MRI Brain With and Without Contrast'),
 ('MR002','Knee MRI Without Dye | MRI Knee Without Contrast | MRI Knee Without Contrast'),
 ('MR003','Lower Spine MRI Without Dye | MRI Lower Spine Without Contrast | MRI Lower Spine Without Contrast'),
 ('MR004','Brain MRI Without Dye | Brain Scan | MRI Brain Without Contrast'),
 ('MR005','Arm MRI Without Dye | MRI Arm Without Contrast | MRI Arm Without Contrast'),
 ('MR006','Lower Spine MRI Without and With Dye | MRI Lower Spine Without and With Contrast | MRI Lower Spine Without and With Contrast'),
 ('MR007','Upper Spine MRI Without Dye | MRI Upper Spine Without Contrast | MRI Upper Spine Without Dye | MRI Upper Spine Without Contrast'),
 ('MR008','Abdomen MRI | Abdomen Scan | MRI Abdomen | Abdominal MRI | Abdominal Scan'),
 ('MR009','Ankle MRI | Ankle Scan | MRI Ankle '),
 ('MR010','Breast MRI | Breast Scan | MRI Breast'),
 ('MR011','Elbow MRI | Elbow Scan | MRI Elbow'),
 ('MR012','Face MRI | Face Scan | Scan Face '),
 ('MR013','Foot MRI | Foot Scan | Scan Foot'),
 ('MR014','Heart MRI | Heart Scan | MRI Heart '),
 ('MR015','Hip MRI | Hip Scan | Scan Hip'),
 ('MR016','Hip MRI | Hip Scan | Scan Hip'),
 ('MR017','Jaw MRI | Jaw Scan | Scan Jaw | TMJ | Temporomandibular Joint'),
 ('MR018','Leg MRI | Leg Scan | Scan Leg'),
 ('MR019','Pelvis MRI | Pelvis Scan | Scan Pelvis | Pelvic MRI | Pelvic Scan | Scan Pelvic'),
 ('MR020','Pelvis MRI | Pelvis Scan | Scan Pelvis | Pelvic MRI | Pelvic Scan | Scan Pelvic'),
 ('MR021','Wrist MRI | Wrist Scan | MRI Wrist'),
 ('MR022','blank condition'),
 ('MR023','blank condition'),
 ('MR024','blank condition'),
 ('MR025','blank condition'),
 ('MR026','blank condition'),
 ('MR027','blank condition'),
 ('MR028','blank condition'),
 ('MR029','blank condition'),
 ('MR030','blank condition'),
 ('MR031','Abdomen MRI | Abdomen Scan | MRI Abdomen | Abdominal MRI | Abdominal Scan'),
 ('MS001','MS'),
 ('NC001','NCS | EMG | Muscle Electrical Activity | Myogram | Neuromuscular Disease | Muscle Wave Recording | Electromyogram'),
 ('OS001','Fever Blister | Oral Herpes | Herpes'),
 ('OV001','Air Sickness Prevention | Anemia Injection | Anemia Shot | B12 Injection | B12 Shot | Bee Sting | Check Wound | Cleaning Ear | Ear Plugged | Ear Wax Removal | EpiPen Refill | Medication Renewal | Motion Sickness Prevention | Plugged Ear | Refill EpiPen | Removal of Ear Wax | Remove Staples | Remove Stitches | Remove Sutures | Renew Medication | Sea Sickness Prevention | Staple Removal | Suture Removal | Stitch Removal | Vitamin B12 Injection | Vitamin B12 Shot | Wound Check | Doctor Visit - New '),
 ('OV002','Swimmers Ear | Eye Bumps | Bumps in Eye | Canker Sore | Cold Sore | Mouth Sore | Oral Sore | Mouth Pain | Eczema | Dry Skin | Irritated Skin | Flaky Skin | Impetigo | Skin Infection | Skin Problems | Skin Sores | Skin Breakout | Head Lice | Lice | Itchy Scalp | Poison Ivy | Poison Oak | Ringworm | Scabies | Mites | Sunburn | Burn From Sun | Peeling Skin | Swimmers Itch | Parasites | Wart | Insect Bite | Insect Sting | Bug Bite | Bug Sting | Tick | Deer Tick | Jellyfish Sting | Fish Sting | Corne'),
 ('OV003','Abrasion | Asthma Check-up | Asthma Monitoring | Blood in Stool | Bloody Stool | Bones Brittle | Bones Weak | Brittle Bones | Burn | Check Asthma | Chills | Cut | Fever | High Temperature | Insomnia |  Low Grade Fever | Monitor Asthma | Narcolepsy | Osteoporosis | Painful Rash | Skin Injury | Temperature | Unable to Fall Asleep | Weak Bones | Genital Warts | Lupus | Doctor Visit - New Patient - Moderate'),
 ('OV004','Arm Pain | Arthritis | Cancer | Chronic Obstructive Pulmonary Disease | COPD | Diarrhea | Difficulty Breathing | Disease Lung | Fatigue | Feet Swelling | Fibromyalgia | Food Poisoning | General Body Pain | Hip Pain | Joint Pain | Kissing Disease | Lung Disease | Lyme Disease | Lyme Tick Disease | Mononucleosis | Muscle Pain | Pain in Body | Pain in Joint | Pain in Muscles | RA - Rheumatoid Arthritis | Rheumatoid Arthritis | Runny Stool | Shortness of Breath | Sleepy | Swelling in Feet | Swollen '),
 ('OV005','Chest Heaviness | Dizziness | Chest Pain | Fainting | Lightheaded | Pain in Chest | Weight on Chest | Vertigo | Weakness | Spinning - Dizziness | Doctor Visit - New Patient - High'),
 ('OV006','Air Sickness Prevention | Anemia Injection | Anemia Shot | B12 Injection | B12 Shot | Bee Sting | Check Wound | Cleaning Ear | Ear Plugged | Ear Wax Removal | EpiPen Refill | Medication Renewal | Motion Sickness Prevention | Plugged Ear | Refill EpiPen | Removal of Ear Wax | Remove Staples | Remove Stitches | Remove Sutures | Renew Medication | Sea Sickness Prevention | Staple Removal | Suture Removal | Stitch Removal | Vitamin B12 Injection | Vitamin B12 Shot | Wound Check | Doctor Visit - Esta'),
 ('OV007','Swimmers Ear | Eye Bumps | Bumps in Eye | Canker Sore | Cold Sore | Mouth Sore | Oral Sore | Mouth Pain | Eczema | Dry Skin | Irritated Skin | Flaky Skin | Impetigo | Skin Infection | Skin Problems | Skin Sores | Skin Breakout | Head Lice | Lice | Itchy Scalp | Poison Ivy | Poison Oak | Ringworm | Scabies | Mites | Sunburn | Burn From Sun | Peeling Skin | Swimmers Itch | Parasites | Wart | Insect Bite | Insect Sting | Bug Bite | Bug Sting | Tick | Deer Tick | Jellyfish Sting | Fish Sting | Corne'),
 ('OV008','Abrasion | Asthma Check-up | Asthma Monitoring | Blood in Stool | Bloody Stool | Bones Brittle | Bones Weak | Brittle Bones | Burn | Check Asthma | Chills | Cut | Fever | High Temperature | Insomnia |  Low Grade Fever | Monitor Asthma | Narcolepsy | Osteoporosis | Painful Rash | Skin Injury | Temperature | Unable to Fall Asleep | Weak Bones  | Genital Warts | Lupus | Doctor Visit - Established Patient - Moderate'),
 ('OV009','Arm Pain | Arthritis | Cancer | Chronic Obstructive Pulmonary Disease | COPD | Diarrhea | Difficulty Breathing | Disease Lung | Fatigue | Feet Swelling | Fibromyalgia | Food Poisoning | General Body Pain | Hip Pain | Joint Pain | Kissing Disease | Lung Disease | Lyme Disease | Lyme Tick Disease | Mononucleosis | Muscle Pain | Pain in Body | Pain in Joint | Pain in Muscles | RA - Rheumatoid Arthritis | Rheumatoid Arthritis | Runny Stool | Shortness of Breath | Sleepy | Swelling in Feet | Swollen '),
 ('OV010','Chest Heaviness | Dizziness | Chest Pain | Fainting | Lightheaded | Pain in Chest | Weight on Chest | Vertigo | Weakness | Spinning - Dizziness | Doctor Visit - Established Patient - High'),
 ('OV011','Consultation | Specialist Consultation | Specialist Visit - Minimal'),
 ('OV012','Consultation | Specialist Consultation | Specialist Visit - Low'),
 ('OV013','Consultation | Specialist Consultation | Specialist Visit - Moderate'),
 ('OV014','Consultation | Specialist Consultation | Specialist Visit - Moderate to High'),
 ('OV015','Consultation | Specialist Consultation | Specialist Visit - High'),
 ('OV016','Annual Physical | Blood Sugar Test | Diabetes Screening | HPV Immunization | HPV Shot | HPV Vaccine | Human Papilloma Immunization | Human Papilloma Vaccine | Human Papilloma Shot | Immunization HPV | Immunization Human Papilloma Virus | Vaccine HPV | Vaccine Human Papilloma Virus | Meningitis Shot | Meningitis Vaccine | Immunization Meningitis | Vaccine Meningitis | Tetanus Shot | Diphtheria Shot | Pertussis Shot | Whooping Cough Shot | Tetanus Vaccine | Diphtheria Vaccine | Pertussis Vaccine |'),
 ('OV017','Annual Physical | Blood Sugar Test | Diabetes Screening | Fasting Blood Sugar | HPV Immunization | HPV Shot | HPV Vaccine | Human Papilloma Immunization | Human Papilloma Vaccine | Human Papilloma Shot | Immunization HPV | Immunization Human Papilloma Virus | Vaccine HPV | Vaccine Human Papilloma Virus | Preventative Exam | Preventive Exam | Varicella Vaccine | Well Women | Well Woman | Womens Physical | Chickenpox Vaccine | Chickenpox Shot | Chickenpox Immunization | Immunization Chickenpox | V'),
 ('OV018','Annual Physical | Diabetes Screening | Fasting Blood Sugar | Blood Sugar Test | Preventative Exam | Preventive Exam | Womens Physical | Well Woman | Well Women | Annual Physical for Established Patient - 40 to 64 Year Old Female'),
 ('OV019','Annual Physical | Childrens Annual Exam | Childrens Wellness Visit | Hepatitis A Immunization | Hepatitis A Shot | Hepatitis A Vaccine | Immunization Hepatitis A | Hep A Shot | Vaccine Hepatitis A | Meningitis Shot | Meningitis Vaccine | Immunization Meningitis | Vaccine Meningitis | Tetanus Shot | Diphtheria Shot | Pertussis Shot | Whooping Cough Shot | Tetanus Vaccine | Diphtheria Vaccine | Pertussis Vaccine | Whooping Cough Vaccine | Immunization Tetanus | Immunization Diphtheria | Immunizati'),
 ('OV020','Preventive Visit - Established Patient | Routine Office Visit Age 65 and Older | Routine CheckupAge 65 and Older | Annual Physical Age 65 and Older | Yearly Physical Age 65 and Older | Physical | Pap Smear | Annual Physical for Established Patient - 65+ Year Old Female'),
 ('OV021','Hepatitis B Immunization | Hepatitis B Shot | Hepatitis B Vaccine | Immunization Hepatitis B | Hep B Shot | Vaccine Hepatitis B | Pneumonia Shot | Pneumonia Vaccine | Immunization Pneumonia | Vaccine Pneumonia | Polio Shot | Polio Vaccine | Immunization Polio | Vaccine Polio | Hib Vaccine | Childrens Wellness Visit | Hemophilus Shot | IPV Shot | IPV Vaccine | Pediatrician Exam | Pediatrician Visit | Poliovirus Shot | Poliovirus Vaccine | Preventative Exam | Preventive Exam | Annual Physical for '),
 ('OV022','HIB Vaccine | Chickenpox Vaccine | Chickenpox Shot | Chickenpox Immunization | Immunization Chickenpox | Vaccine Chickenpox | Vaccine Chicken Pox | Chicken Pox Vaccine | Chicken Pox Shot | Chicken Pox Immunization | Immunization Chicken Pox | Varicella Vaccine | Childrens Annual Exam | Childrens Wellness Visit | Hepatitis A Immunization | Hepatitis A Shot | Hepatitis A Vaccine | Immunization Hepatitis A | Hep A Shot | Vaccine Hepatitis A | Hepatitis B Immunization | Hepatitis B Shot | Hepatitis '),
 ('OV023','Hepatitis B Immunization | Hepatitis B Shot | Hepatitis B Vaccine | Immunization Hepatitis B | Hep B Shot | Vaccine Hepatitis B | Pneumonia Shot | Pneumonia Vaccine | Immunization Pneumonia | Vaccine Pneumonia | Polio Shot | Polio Vaccine | Immunization Polio | Vaccine Polio | Hib Vaccine | Childrens Wellness Visit | Hemophilus Shot | IPV Shot | IPV Vaccine | Pediatrician Exam | Pediatrician Visit | Poliovirus Shot | Poliovirus Vaccine | Preventative Exam | Preventive Exam | Annual Physical for '),
 ('OV024','Annual Physical | Blood Sugar Test | Diabetes Screening | HPV Immunization | HPV Shot | HPV Vaccine | Human Papilloma Immunization | Human Papilloma Vaccine | Human Papilloma Shot | Immunization HPV | Immunization Human Papilloma Virus | Vaccine HPV | Vaccine Human Papilloma Virus | Meningitis Shot | Meningitis Vaccine | Immunization Meningitis | Vaccine Meningitis | Tetanus Shot | Diphtheria Shot | Pertussis Shot | Whooping Cough Shot | Tetanus Vaccine | Diphtheria Vaccine | Pertussis Vaccine |'),
 ('OV025','HIB Vaccine | Chickenpox Vaccine | Chickenpox Shot | Chickenpox Immunization | Immunization Chickenpox | Vaccine Chickenpox | Vaccine Chicken Pox | Chicken Pox Vaccine | Chicken Pox Shot | Chicken Pox Immunization | Immunization Chicken Pox | Varicella Vaccine | Childrens Annual Exam | Childrens Wellness Visit | Hepatitis A Immunization | Hepatitis A Shot | Hepatitis A Vaccine | Immunization Hepatitis A | Hep A Shot | Vaccine Hepatitis A | Hepatitis B Immunization | Hepatitis B Shot | Hepatitis '),
 ('OV026','Annual Physical | Blood Sugar Test | Diabetes Screening | Fasting Blood Sugar | HPV Immunization | HPV Shot | HPV Vaccine | Human Papilloma Immunization | Human Papilloma Vaccine | Human Papilloma Shot | Immunization HPV | Immunization Human Papilloma Virus | Vaccine HPV | Vaccine Human Papilloma Virus | Preventative Exam | Preventive Exam | Varicella Vaccine | Well Women | Well Woman | Womens Physical | Chickenpox Vaccine | Chickenpox Shot | Chickenpox Immunization | Immunization Chickenpox | V'),
 ('OV027','Annual Physical | Diabetes Screening | Fasting Blood Sugar | Blood Sugar Test | Preventative Exam | Preventive Exam | Womens Physical | Well Woman | Well Women | Annual Physical for New Patient - 40 to 64 Year Old Female'),
 ('OV028','Annual Physical | Childrens Annual Exam | Childrens Wellness Visit | Hepatitis A Immunization | Hepatitis A Shot | Hepatitis A Vaccine | Immunization Hepatitis A | Hep A Shot | Vaccine Hepatitis A | Meningitis Shot | Meningitis Vaccine | Immunization Meningitis | Vaccine Meningitis | Tetanus Shot | Diphtheria Shot | Pertussis Shot | Whooping Cough Shot | Tetanus Vaccine | Diphtheria Vaccine | Pertussis Vaccine | Whooping Cough Vaccine | Immunization Tetanus | Immunization Diphtheria | Immunizati'),
 ('OV029','Preventive Visit - New patient | New Patient Routine Office Visit Age 65 and Older | New Patient Routine Checkup Age 65 and Older | New Patient Annual Physical Age 65 and Older | New Patient Yearly Physical Age 65 and Older | Pap Smear   | Annual Physical for New Patient - 65+ Year Old Female'),
 ('OV030','Annual Physical | Blood Sugar Test | Chickenpox Shot | Chickenpox Vaccine | Childrens Annual Exam | Childrens Wellness Visit | Diabetes Screening | Fasting Blood Sugar | Meningitis Shot | Meningitis Vaccine | Immunization Meningitis | Vaccine Meningitis | Tetanus Shot | Diphtheria Shot | Pertussis Shot | Whooping Cough Shot | Tetanus Vaccine | Diphtheria Vaccine | Pertussis Vaccine | Whooping Cough Vaccine | Immunization Tetanus | Immunization Diphtheria | Immunization Pertussis | Immunization W'),
 ('OV031','Annual Physical | Blood Sugar Test | Chickenpox Shot | Chickenpox Vaccine | Diabetes Screening | Fasting Blood Sugar | Mens Physical | Preventative Exam | Preventive Exam | Varicella Vaccine | Chickenpox Vaccine | Chickenpox Shot | Chickenpox Immunization | Immunization Chickenpox | Vaccine Chickenpox | Vaccine Chicken Pox | Chicken Pox Vaccine | Chicken Pox Shot | Chicken Pox Immunization | Immunization Chicken Pox | Annual Physical for Established Patient - 18 to 39 Year Old Male'),
 ('OV032','Annual Physical | Blood Sugar Test | Diabetes Screening | Fasting Blood Sugar | Mens Physical | Preventative Exam | Preventive Exam | Annual Physical for Established Patient - 40 to 64 Year Old Male'),
 ('OV033','Annual Physical | Blood Sugar Test | Chickenpox Shot | Chickenpox Vaccine | Childrens Annual Exam | Childrens Wellness Visit | Diabetes Screening | Fasting Blood Sugar | Meningitis Shot | Meningitis Vaccine | Immunization Meningitis | Vaccine Meningitis | Tetanus Shot | Diphtheria Shot | Pertussis Shot | Whooping Cough Shot | Tetanus Vaccine | Diphtheria Vaccine | Pertussis Vaccine | Whooping Cough Vaccine | Immunization Tetanus | Immunization Diphtheria | Immunization Pertussis | Immunization W'),
 ('OV034','Annual Physical | Blood Sugar Test | Chickenpox Shot | Chickenpox Vaccine | Diabetes Screening | Fasting Blood Sugar | Mens Physical | Preventative Exam | Preventive Exam | Varicella Vaccine | Chickenpox Vaccine | Chickenpox Shot | Chickenpox Immunization | Immunization Chickenpox | Vaccine Chickenpox | Vaccine Chicken Pox | Chicken Pox Vaccine | Chicken Pox Shot | Chicken Pox Immunization | Immunization Chicken Pox | Annual Physical for New Patient - 18 to 39 Year Old Male'),
 ('OV035','Annual Physical | Blood Sugar Test | Diabetes Screening | Fasting Blood Sugar | Mens Physical | Preventative Exam | Preventive Exam | Annual Physical for New Patient - 40 to 64 Year Old Male'),
 ('OV036','Preventive Visit - Established Patient | Routine Office Visit Age 65 and Older | Routine CheckupAge 65 and Older | Annual Physical Age 65 and Older | Yearly Physical Age 65 and Older | Physical |  | Annual Physical for Established Patient - 65+ Year Old Male'),
 ('OV037','Preventive Visit - New patient | New Patient Routine Office Visit Age 65 and Older | New Patient Routine Checkup Age 65 and Older | New Patient Annual Physical Age 65 and Older | New Patient Yearly Physical Age 65 and Older | Annual Physical for New Patient - 65+ Year Old Male'),
 ('OV038','Consultation | Immunology | Specialist | Allergy'),
 ('OV039','Consultation | Cardiologist | Heart Doctor | Specialist'),
 ('OV040','Consultation | Dermatologist | Skin Doctor | Specialist'),
 ('OV041','Consultation | ENT | Nose Doctor | Throat Doctor | Otolaryngology | Specialist'),
 ('OV042','Consultation | Specialist'),
 ('OV043','Consultation | GI Doctor | Stomach Doctor | Specialist'),
 ('OV045','Consultation | Specialist'),
 ('OV046','Consultation | Neurologist | Specialist'),
 ('OV047','Consultation | Nutrition | Specialist'),
 ('OV048','Consultation | OBGYN | Gynecology | Gynecologist | Pregnancy Doctor | Specialist'),
 ('OV049','Consultation | Cancer Doctor | Specialist'),
 ('OV050','Consultation | Bone Doctor | Specialist'),
 ('OV051','Consultation | Rehabilitation Medicine | Specialist'),
 ('OV052','Consultation | Foot Doctor | Podiatry | Specialist'),
 ('OV053','Consultation | Urologist | Bladder Doctor | Kidney Doctor | Specialist'),
 ('PE001','Pink Eye | Conjunctivitis | Eye Infection | Eye Irritation | Red Eye | Eye Drainage | Itchy Eyes | Watery Eyes | Swollen Eye | Eye Goop | Eye Pain | Eye Redness | Eye Sore | Eyes Itch | Goopy Eye | Eye Discomfort'),
 ('PH001','TURP | Transurethral Resection of the Prostate | Prostatectomy | Removal of Prostate | Prostate Removal | BPH | Benign Prostatic Hypertrophy | Benign Prostatic Hyperplasia | Difficulty Urinating | Prostate Enlargement | Large Prostate'),
 ('PH002','TURP | Transurethral Resection of the Prostate | Prostatectomy | Removal of Prostate | Prostate Removal | BPH | Benign Prostatic Hypertrophy | Benign Prostatic Hyperplasia | Difficulty Urinating | Prostate Enlargement | Large Prostate'),
 ('PP001','Plaque | Skin Rash | Flaky Skin | Scales | Scaly Skin'),
 ('PT001','Manual Therapy Techniques | Massage | Physical Therapy | Stretching and Strengthening Activities'),
 ('PT002','Therapeutic Exercises | Physical Therapy'),
 ('PT003','Neuromuscular Reeducation | Muscle Retraining | Muscle Re-training | Physical Therapy'),
 ('PT004','Therapeutic Activities | Physical Therapy'),
 ('RA001','RA | Arthritis'),
 ('RA002','Joint Problems | Joint Pain | Arthritis'),
 ('RD001','Retina | Detached Retina | Torn Retina | Retinal Detachment Repair'),
 ('RT001','Radiotherapy - Low | Kill Cancer Cells | Shrink Tumors | Radiation | Cancer | Radiation Therapy - Low Intensity'),
 ('RT002','Radiotherapy - Medium | Kill Cancer Cells | Shrink Tumors | Radiation | Cancer | Radiation Therapy - Medium Intensity'),
 ('RT003','Radiotherapy - Varied | Kill Cancer Cells | Shrink Tumors | Radiation | Cancer | Radiation Therapy - Varied Intensity'),
 ('RW001','Fungus | Fungal Infection | Tinea'),
 ('SA001','Snoring | Sleep Study | OSA | Sleep Disorders | Sleep Study with CPAP | Obstructive Sleep Apnea | CPAP'),
 ('SC001','Mites | Rash | Burrows'),
 ('SH001','Varicella | Varicella-Zoster | Shingles Shot | Shingles Vaccine | Rash'),
 ('SI001','Headache | Facial Pressure | Facial Pain | Nasal Drainage | Nasal Congestion | Post-nasal Drip | Bad Breath | Sinus Infection | Infection in Sinuses | Mucus | Sinus Congestion | Sinus Pain | Stuffy Nose | Pain in Face | Nose Congestion | Nose Drainage | Green Nose Drainage'),
 ('SI002','Nasal Endoscopy | Biopsy | Nasal Biopsy | Polyp Removal | Nasal Debridement | Sinus Endoscopy | Sinus Debridement | Bad Breath'),
 ('SI003','Septoplasty | Nose Surgery | Turbinate Excision | Deviated Septum | Nasal Septum'),
 ('SN001','Congestion | Mucus | Cold | Runny Nose | Allergies | Allergy Symptoms | Nasal Congestion | Nose Drainage | Sinus Congestion | Sinus Pain | Stuffy Nose | Green Nose Drainage | Nose Congestion | Nose Drainage | Post-Nasal Drip'),
 ('SP001','Shoulder Pain | Shoulder Strain | Shoulder Injury | Hurt Shoulder | Rotator Cuff Injury | Painful Shoulder '),
 ('SP002','Torn Labrum | Labrum Tear | Cartilage Tear | SLAP Lesion | Shoulder Pain | Shoulder Strain | Shoulder Injury | Hurt Shoulder | Painful Shoulder | Shoulder Arthroscopy | Arthroscopy Shoulder'),
 ('SP003','Torn Rotator Cuff | Rotator Cuff Tear | Tendon Tear | Shoulder Pain | Shoulder Strain | Shoulder Injury | Hurt Shoulder | Painful Shoulder | Shoulder Arthroscopy | Arthroscopy Shoulder'),
 ('SS001','Sleep Apnea Test | Sleep Apnea | Snoring | Sleep Study | Apnea Test | Sleep Disorders'),
 ('SS002','Sleep Apnea Test With CPAP | Sleep Apnea | Snoring | Sleep Study | Apnea Test | CPAP | Sleep Study With CPAP | Sleep Disorders'),
 ('SS003','Sleep Apnea Test | Snoring | Sleep Study | Apnea Test | Home Sleep Study | Sleep Disorders'),
 ('ST001','Sore Throat | Strep Throat | Scratchy Throat | Pharyngitis | Throat Irritation | Difficulty Swallowing | Swollen Throat | Swollen Tonsils | Throat Culture | Throat Infection | Throat Pain'),
 ('ST002','Sore Throat | Scratchy Throat | Throat Irritation | Hoarseness | Difficulty Speaking | Speaking Difficulty'),
 ('ST003','Throat Problems | Throat Scope | Voice Problems | Throat Pain | Swallowing Problems | Throat Injury'),
 ('SZ001','Epilepsy | Fits'),
 ('TH001','THR | Hip Replacement | Replacing Hip | Repair Hip | Osteoarthritis '),
 ('TJ001','TMJ | Jaw | Temporalmandibular Joint Disorder'),
 ('TK001','TKR | Knee Replacement | Replacing Knee | Repair Knee | Osteoarthritis '),
 ('TR001','Remove Tonsils | Tonsillectomy | Throat infection | Swollen Tonsils | Sore Throat | Tonsillitis | Swollen Throat |  Multiple Throat Infections | Removal of Tonsils'),
 ('TR002','Remove Tonsils | Remove Adenoids | Adenoidectomy | Tonsillectomy | Throat Infection | Swollen Tonsils | Sore Throat | Tonsillitis | Ear Infection | Multiple Throat Infections | Enlarged Adenoids | Swollen Adenoids | Swollen Throat | Infection in Ear | Tonsillectomy and Adenoidectomy'),
 ('UE001','Reflux | Chest Pain | Acid Reflux | Eating Difficulty | Burning in Chest | Burning in Throat | Digestive Problems | Esophagitis | Gastroesophageal Reflux Disease | GERD | Nausea | Regurgitation | Sour Stomach | Stomach Disorder | Stomach Upset | Upset Stomach | Scope | Stomach Ache | Stomach Pain'),
 ('UE002','Reflux | Chest Pain | Acid Reflux | Eating Difficulty | Burning in Chest | Burning in Throat | Digestive Problems | Esophagitis | Gastroesophageal Reflux Disease | GERD | Nausea | Regurgitation | Sour Stomach | Stomach Disorder | Stomach Upset | Upset Stomach | Scope | Stomach Ache | Stomach Pain'),
 ('UE003','Acid Reflux | Burning in Chest | Burning in Throat | Chest Pain | Digestive Problems | Eating Difficulty | Esophagitis | Gastroesophageal Reflux Disease | GERD | Nausea | Reflux | Regurgitation | Scope | Sour Stomach | Stomach Ache | Stomach Disorder | Stomach Pain | Stomach Upset | Upset Stomach | Difficulty Swallowing | Burping'),
 ('UE004','Endoscopic Retrograde Cholangiopancreatography | Gallstones | Bile Ducts | Pancreatitis | Pancreas'),
 ('US001','Abdominal Scan | Abdominal Sonogram | Abdominal Ultrasound | Sonogram of Abdomen'),
 ('US002','Breast Sonogram | Breast Ultrasound | Sonogram of Breast'),
 ('US003','Pelvic Ultrasound | Pelvic Sonogram | Sonogram of Pelvis'),
 ('US004','Rear of Abdomen Ultrasound | Retroperitoneal Ultrasound | Sonogram of Rear of Abdomen'),
 ('US005','Pregnancy Ultrasound | Pregnancy Evaluation | Sonogram of Pregnant Uterus'),
 ('US006','Pelvic Ultrasound via Vagina | Sonogram of Pelvis via Vagina'),
 ('US007','blank condition'),
 ('US008','blank condition'),
 ('VA001','Flu Vaccine | Flu Shot | Immunization Flu | Immunization Influenza | Influenza Shot | Influenza Vaccine | Vaccine Flu | Vaccine Influenza | Seasonal Flu Shot'),
 ('VA002','Flu Vaccine | Flu Shot | Immunization Flu | Immunization Influenza | Influenza Shot | Influenza Vaccine | Vaccine Flu | Vaccine Influenza | Seasonal Flu Shot'),
 ('VA003','HPV Immunization | HPV Shot | HPV Vaccine |  Human Papilloma Immunization | Human Papilloma Vaccine | Human Papilloma Shot | Cervarix | Gardasil | Immunization Human Papilloma Virus | Immunization HPV | Vaccine HPV'),
 ('VA004','Zostavax | Shingles Immunization | Shingles Shot | Shingles Vaccine | Vaccine Shingles'),
 ('VA005','Pneumonia Shot | Pneumonia Immunization | Immunization Pneumonia | Vaccine Pneumonia | Pneumococcal Conjugate Vaccine'),
 ('VA006','Hepatitis A Vaccine | Hepatitis A Shot | Hepatitis A Immunization | Immunization Hepatitis A | Vaccine Hepatitis A'),
 ('VA007','Hepatitis A Vaccine | Hepatitis A Shot | Hepatitis A Immunization | Immunization Hepatitis A | Vaccine Hepatitis A'),
 ('VA008','Hepatitis B Vaccine | Hepatitis B Shot | Hepatitis B Immunization | Immunization Hepatitis B | Vaccine Hepatitis B'),
 ('VA009','Hepatitis B Vaccine | Hepatitis B Shot | Hepatitis B Immunization | Immunization Hepatitis B | Vaccine Hepatitis B'),
 ('VA010','MMR Vaccine | MMR Shot | MMR Immunization | Immunization MMR | Measles Vaccine | Measles Shot | Measles Immunization | Immunization Measles | Mumps Vaccine | Mumps Shot | Mumps Immunization | Immunization Mumps | Rubella Vaccine | Rubella Shot | Rubella Immunization | Immunization Rubella | Vaccine MMR | Vaccine Measles | Vaccine Mumps | Vaccine Rubella'),
 ('VA011','Chickenpox Vaccine | Chickenpox Shot | Chickenpox Immunization | Immunization Chickenpox | Vaccine Chickenpox | Vaccine Chicken Pox | Chicken Pox Vaccine | Chicken Pox Shot | Chicken Pox Immunization | Immunization Chicken Pox | Varicella Vaccine'),
 ('VA012','DTaP Vaccine | DTaP Shot | DTaP Immunization | Immunization DTaP | Diphtheria Vaccine | Diphtheria Shot | Diphtheria Immunization | Immunization Diphtheria | Tetanus Vaccine | Tetanus Shot | Tetanus Immunization | Immunization Tetanus | Pertussis Vaccine | Pertussis Shot | Pertussis Immunization | Immunization Pertussis | Vaccine DTaP  | Vaccine Diptheria | Vaccine Tetanus | Vaccine Pertussis'),
 ('VA013','Hib Vaccine | Hib Shot | Hib Immunization | Immunization Hib | Haemophilus Influenza Vaccine | Haemophilus Influenza Shot | Haemophilus Influenza Immunization | Immunization Haemophilus Influenza | Vaccine Hib | Vaccine Haemophilus Influenza'),
 ('VA014','Meningococcal Vaccine | Meningococcal Shot | Meningococcal Immunization | Immunization Meningococcal | Vaccine Meningococcal | Immunization Meningitis | Meningitis Immunization | Meningitis Shot | Meningitis Vaccine | Vaccine Meningitis | Meningococcal Conjugate Vaccine'),
 ('VA015','Polio Vaccine | Polio Shot | Polio Immunization | Immunization Polio | Vaccine Polio'),
 ('VA016','Rotavirus Vaccine | Rotavirus Shot | Rotavirus Immunization | Immunization Rotavirus | Vaccine Rotavirus'),
 ('VA017','TdaP Vaccine | TdaP Shot | TdaP Immunization | Immunization TdaP | Diphtheria Vaccine | Diphtheria Shot | Diphtheria Immunization | Immunization Diphtheria | Tetanus Vaccine | Tetanus Shot | Tetanus Immunization | Immunization Tetanus | Pertussis Vaccine | Pertussis Shot | Pertussis Immunization | Immunization Pertussis | Vaccine TdaP | Vaccine Diptheria | Vaccine Tetanus | Vaccine Pertussis'),
 ('VA018','Tetanus Vaccine | Tetanus Shot | Tetanus Immunization | Immunization Tetanus | Vaccine Tetanus | Vaccine Td | Td Immunization | Td Shot | Td Vaccine | Immunization Td'),
 ('VA019','Flu Vaccine | Flu Shot | Immunization Flu | Immunization Influenza | Influenza Shot | Influenza Vaccine | Vaccine Flu | Vaccine Influenza | Seasonal Flu Shot'),
 ('VH001','Viral Hepatitis | Viral Infection | Hep B'),
 ('VY001','Sterilization | Male Sterilization | Vas Deferens | Cut Tubes'),
 ('WS001','CTS | Carpal Tunnel Syndrome | Carpal Tunnel Release | Release of Carpal Tunnel | Release of Median Nerve | Median Nerve | Transverse Carpal Ligament '),
 ('WS002','Ganglion Cyst | Wrist'),
 ('XR001','Chest X-ray | Chest Xray'),
 ('XR002','Abdominal X-ray | Abdominal Xray'),
 ('XR008','Hip X-ray | Hip Xray'),
 ('XR009','Finger X-ray | Finger Xray'),
 ('XR010','DXA scan | DEXA scan | Bone Density Study'),
 ('XR011','Breast Mammography | Film Mammogram | Cancer Screening | Preventive Screening | Screening Mammogram - Film'),
 ('XR013','Ankle X-ray | Ankle Xray'),
 ('XR014','Chest X-ray | Chest Xray'),
 ('XR015','Foot X-ray | Foot Xray'),
 ('XR016','Hand X-ray | Hand Xray'),
 ('XR019','Shoulder X-ray | Shoulder Xray'),
 ('XR020','Wrist X-ray | Wrist Xray'),
 ('XR021','Myocardial Perfusion Study | Heart Perfusion Study | Heart Muscle Damage | Cardiac Perfusion Scan'),
 ('XR022','PET and CT Scan'),
 ('XR023','Knee X-ray | Knee Xray'),
 ('XR024','Neck X-ray | Neck Xray'),
 ('XR025','Lower Back X-ray | Lower Back Xray '),
 ('XR026','Breast Mammography | Digital Mammogram | Cancer Screening | Preventive Screening | Screening Mammogram - Digital'),
 ('XR027','Breast Mammography | Digital Mammogram | Diagnostic Mammogram | Lump'),
 ('XR028','Breast Mammography | Film Mammogram | Diagnostic Mammogram | Lump'),
 ('XR029','Hepatobiliary Scan | Liver Problems | Bile Ducts | Gallbladder Problems | Cholescintigraphy | Hepatobiliary Scintigraphy '),
 ('XR031','blank condition'),
 ('XR032','blank condition'),
 ('XR033','blank condition'),
 ('XR034','Carpal tunnel surgery | Carpal tunnel syndrome surgery'),
 ('XR035','Heart bypass surgery | CABG'),
 ('XR036','blank condition'),
 ('XR037','blank condition'),
 ('XR038','blank condition'),
 ('XR039','blank condition'),
 ('XR040','blank condition'),
 ('XR041','blank condition'),
 ('XR042','blank condition'),
 ('XR043','blank condition'),
 ('XR044','blank condition'),
 ('XR045','blank condition'),
 ('XR046','blank condition'),
 ('XR047','blank condition'),
 ('XR048','blank condition'),
 ('XR049','blank condition'),
 ('XR050','blank condition'),
 ('XR051','blank condition'),
 ('XR052','blank condition'),
 ('XR053','blank condition'),
 ('XR054','blank condition'),
 ('XR055','blank condition'),
 ('XR056','blank condition'),
 ('XR057','blank condition'),
 ('XR058','blank condition'),
 ('XR059','blank condition'),
 ('XR060','blank condition'),
 ('XR061','blank condition'),
 ('XR062','blank condition'),
 ('XR063','blank condition'),
 ('XR064','blank condition'),
 ('XR065','blank condition'),
 ('XR066','blank condition'),
 ('XR067','blank condition'),
 ('XR068','blank condition'),
 ('XR069','blank condition'),
 ('XR070','blank condition'),
 ('XR071','blank condition'),
 ('XR072','blank condition'),
 ('XR073','blank condition'),
 ('XR074','blank condition'),
 ('XR075','blank condition'),
 ('XR076','blank condition'),
 ('XR077','blank condition'),
 ('XR078','blank condition'),
 ('XR079','blank condition'),
 ('XR080','blank condition'),
 ('XR081','blank condition'),
 ('XR082','blank condition'),
 ('XR083','blank condition'),
 ('XR084','blank condition'),
 ('XR085','blank condition'),
 ('XR086','blank condition'),
 ('XR087','blank condition'),
 ('XR088','blank condition'),
 ('XR089','blank condition'),
 ('XR090','blank condition'),
 ('XR091','blank condition'),
 ('XR092','blank condition'),
 ('XR093','blank condition'),
 ('XR094','blank condition'),
 ('XR095','blank condition'),
 ('XR096','blank condition');
/*!40000 ALTER TABLE `ref_treatcond` ENABLE KEYS */;


--
-- Definition of table `treatcond`
--

DROP TABLE IF EXISTS `treatcond`;
CREATE TABLE `treatcond` (
  `tc_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cb_code` varchar(45) NOT NULL,
  `treat_cond_name` varchar(45) NOT NULL,
  PRIMARY KEY (`tc_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatcond`
--

/*!40000 ALTER TABLE `treatcond` DISABLE KEYS */;
INSERT INTO `treatcond` (`tc_id`,`cb_code`,`treat_cond_name`) VALUES 
 (1,'BP007','Back Pain Lumbar'),
 (2,'BP007','Back Pain'),
 (3,'EI001','Ear Ache'),
 (4,'KA002','Knee Replacement'),
 (5,'BB002','Fracture'),
 (6,'BB002','Arm'),
 (7,'BB002','Wrist'),
 (8,'BB002','Bones Brittle'),
 (9,'BP007','Laminectomy'),
 (10,'BP007','Surgery on Back'),
 (11,'BP007','Pain in Back'),
 (12,'BP007','Lamina Removal'),
 (13,'BP007','Back Surgery'),
 (14,'BP007','Lumbar Laminectomy'),
 (15,'CT005','Abdominal and Pelvic CT Scan'),
 (16,'CT005','Abdominal and Pelvic CAT Scan'),
 (17,'CT005','Abdominal CAT Scan'),
 (18,'CT005','Abdominal CT Scan'),
 (19,'CT005','Abdominal Scan'),
 (20,'CT005','Pelvic CT Scan'),
 (21,'EI001','Ear Infection'),
 (22,'EI001','Infection in Ear'),
 (23,'EI001','Pain in Ear'),
 (24,'EI001','Hearing Loss'),
 (25,'EI001','Hearing Problems'),
 (26,'EI001','Cannot Hear'),
 (27,'KA002','Torn ACL'),
 (28,'KA002','ACL Tear'),
 (29,'KA002','Anterior Cruciate Ligament Tear'),
 (30,'KA002','Knee Arthroscopy'),
 (31,'KA002','Ligament Attachment (ACL Repair)'),
 (32,'KA002','Knee Ligament'),
 (33,'MR008','Abdomen MRI'),
 (34,'MR008','Abdomen Scan'),
 (35,'MR008','MRI Abdomen'),
 (36,'MR008','Abdominal MRI'),
 (37,'MR008','Abdominal Scan'),
 (38,'OV003','Abrasion'),
 (39,'OV003','Asthma Check-up'),
 (40,'OV003','Asthma Monitoring'),
 (41,'OV003','Blood in Stool'),
 (42,'OV003','Bloody Stool'),
 (43,'OV015','Consultation'),
 (44,'OV015','Specialist Consultation'),
 (45,'OV015','Specialist Visit - High'),
 (46,'OV017','Annual Physical'),
 (47,'OV017','Blood Sugar Test'),
 (48,'OV017','Diabetes Screening'),
 (49,'OV017','Fasting Blood Sugar'),
 (50,'OV017','HPV Immunization'),
 (51,'OV017','HPV Shot'),
 (52,'TH001','THR'),
 (53,'TH001','Hip Replacement'),
 (54,'TH001','Replacing Hip'),
 (55,'TH001','Repair Hip'),
 (56,'TH001','Osteoarthritis '),
 (57,'TK001','TKR'),
 (58,'TK001','Knee Replacement'),
 (59,'TK001','Replacing Knee'),
 (60,'TK001','Repair Knee'),
 (61,'TK001','Osteoarthritis '),
 (62,'US005','Pregnancy Ultrasound'),
 (63,'US005','Pregnancy Evaluation'),
 (64,'US005','Sonogram of Pregnant Uterus'),
 (65,'VA019','Flu Vaccine'),
 (66,'VA019','Flu Shot'),
 (67,'VA019','Immunization Flu'),
 (68,'VA019','Immunization Influenza'),
 (69,'VA019','Influenza Shot'),
 (70,'VA019','Influenza Vaccine'),
 (71,'XR002','Abdominal X-ray'),
 (72,'XR002','Abdominal Xray'),
 (73,'XR025','Lower Back X-ray'),
 (74,'XR025','Back aPain');
/*!40000 ALTER TABLE `treatcond` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
