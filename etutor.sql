/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.1.73-community : Database - etutor
*********************************************************************
Server version : 5.1.73-community
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

USE `etutor`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `tbl_admin` */

DROP TABLE IF EXISTS `tbl_admin`;

CREATE TABLE `tbl_admin` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_admin` */

insert  into `tbl_admin`(`user_id`,`username`,`password`) values (1,'aafiya','1'),(2,'hamna','2')(3,'shihab','3');

/*Table structure for table `tbl_allottedqns` */

DROP TABLE IF EXISTS `tbl_allottedqns`;

CREATE TABLE `tbl_allottedqns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `qn_paper_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_allottedqns` */

/*Table structure for table `tbl_chat` */

DROP TABLE IF EXISTS `tbl_chat`;

CREATE TABLE `tbl_chat` (
  `chat_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `text` varchar(500) NOT NULL,
  `date` int(11) NOT NULL,
  PRIMARY KEY (`chat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_chat` */

/*Table structure for table `tbl_class` */

DROP TABLE IF EXISTS `tbl_class`;

CREATE TABLE `tbl_class` (
  `class_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_class` */

insert  into `tbl_class`(`class_id`,`student_id`,`subject_id`,`teacher_id`) values (21,29,47,20),(20,28,49,18),(19,28,48,20),(18,28,47,20),(17,25,52,19),(16,25,51,20),(15,25,50,18),(22,29,48,20),(23,29,49,18),(24,23,53,23),(25,23,54,23),(26,23,55,23),(27,30,47,20),(28,30,47,20),(29,30,48,20),(30,30,49,18),(31,23,54,23),(32,31,47,20),(33,31,48,20),(34,31,49,18);

/*Table structure for table `tbl_course` */

DROP TABLE IF EXISTS `tbl_course`;

CREATE TABLE `tbl_course` (
  `course_id` varchar(100) NOT NULL,
  `course_title` varchar(150) NOT NULL,
  `dept_id` int(100) NOT NULL,
  `major` varchar(100) NOT NULL,
  `fee_structure` int(10) NOT NULL,
  `course_duration` varchar(150) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

/*Data for the table `tbl_course` */

insert  into `tbl_course`(`course_id`,`course_title`,`dept_id`,`major`,`fee_structure`,`course_duration`) values ('DMCA','DIPLOMA IN COMPUTER MULTILINGUAL APPLICATIONS',9,'Major',2000,'2 months'),('DGMDP','DIPLOMA IN GRAPHICS & MULTILINGUAL DESKTOP PUBLISHING',9,'Major',5000,'6 months'),('DMOA','DIPLOMA IN OFFICE AUTOMATION & APPLICATION OF GIST',9,'Major',6000,'6 months'),(' DMCP','DIPLOMA IN COMPUTER MULTILINGUAL PROGRAMMING',9,'Major',6000,'6 months'),('DHN','DIPLOMA IN HARDWARE & NETWORKING',9,'Major',10000,'6 months'),('DECom','DIPLOMA IN E-COMMERCE',10,'Major',8000,'6 months'),('DMOAFA','DIPLOMA IN OFFICE AUTOMATION & FIN. ACCOUNTING',10,'Major',6000,'3 months'),('BSW10','Bachelor of social work',13,'Major',10000,'2 months');

/*Table structure for table `tbl_department` */

DROP TABLE IF EXISTS `tbl_department`;

CREATE TABLE `tbl_department` (
  `dept_id` int(11) NOT NULL AUTO_INCREMENT,
  `inCharge` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `dept_name` varchar(100) NOT NULL,
  PRIMARY KEY (`dept_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_department` */

insert  into `tbl_department`(`dept_id`,`inCharge`,`title`,`dept_name`) values (13,'Mrs.Annie','HOD','Social Work'),(11,'Mrs. Rosely','HOD','English'),(10,'Mr.Ameer','HOD','Commerce'),(9,'Mr.Thomas','HOD','Computer');

/*Table structure for table `tbl_exam` */

DROP TABLE IF EXISTS `tbl_exam`;

CREATE TABLE `tbl_exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `student_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `exam_date` varchar(20) NOT NULL,
  `max_mark` float NOT NULL,
  `mark_obtained` float NOT NULL,
  PRIMARY KEY (`exam_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_exam` */

insert  into `tbl_exam`(`exam_id`,`student_id`,`subject_id`,`exam_date`,`max_mark`,`mark_obtained`) values (12,25,51,'2015-10-14',0,0),(13,28,47,'2015-10-15',100,20),(11,25,52,'2015-10-14',0,0),(16,28,48,'2015-10-16',0,0),(15,28,49,'2015-10-16',0,0),(17,29,47,'2015-10-16',100,10),(18,30,49,'2015-10-17',100,20),(19,31,47,'2015-10-17',100,10);

/*Table structure for table `tbl_files` */

DROP TABLE IF EXISTS `tbl_files`;

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(500) NOT NULL,
  `fdateIn` varchar(100) NOT NULL,
  `description` varchar(500) NOT NULL,
  `fname` varchar(200) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`file_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_files` */

insert  into `tbl_files`(`file_id`,`location`,`fdateIn`,`description`,`fname`,`teacher_id`,`subject_id`) values (37,'uploads/8666_File_Inheritance.pptx','15:10:14','inheritance','inheri',18,49),(36,'uploads/2167_File_inheritance_to_MCA.docx','15:10:14','inheritance','inher',20,48),(35,'uploads/1748_File_Predict the output or error.docx','15:10:14','predicate output error','eror',20,47),(33,'uploads/4515_File_CREATE A FILE AND STORE DATA IN IT IN C PROGRAM.docx','15:10:14','c pgm','c pgm',20,47),(34,'uploads/7224_File_C program to read a file.docx','15:10:14','read a file','read',20,47),(32,'uploads/7681_File_csmodule1new.doc','15:10:12','module2','module2',20,51),(31,'uploads/7751_File_MODULE2.docx','15:10:12','module1','module1',20,51),(30,'uploads/1692_File_csmodule1_2ndhalf.docx','15:10:12','module2','module2',19,52),(29,'uploads/5232_File_2D Transformations.pptx','15:10:12','module1','module1',19,52),(28,'uploads/9070_File_csmodule1new.doc','15:10:12','ISM','ISM',22,57),(27,'uploads/9429_File_keymgmt and MAC.pptx','15:10:12','ISM','ISM',22,57),(26,'uploads/5655_File_DES.docx','15:10:12','Digital Signature','Digital Signature',22,53),(38,'uploads/5744_File_Package.pptx','15:10:14','package','package',18,49),(39,'uploads/8105_File_Sessions Presentation.pptx','15:10:16','aaaaaaa','aaaaaa',18,38),(40,'uploads/5341_File_4.Introduction_flora.docx','15:10:16','introduction','Flora',18,50),(41,'uploads/7718_File_Validation.pptx','15:10:17','php','php',18,50);

/*Table structure for table `tbl_questions` */

DROP TABLE IF EXISTS `tbl_questions`;

CREATE TABLE `tbl_questions` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `qn_paper_code` varchar(100) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `option1` varchar(500) NOT NULL,
  `option2` varchar(500) NOT NULL,
  `option3` varchar(500) NOT NULL,
  `option4` varchar(500) NOT NULL,
  `correct_ans` varchar(500) NOT NULL,
  PRIMARY KEY (`question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_questions` */

insert  into `tbl_questions`(`question_id`,`qn_paper_code`,`course_id`,`teacher_id`,`subject_id`,`question`,`option1`,`option2`,`option3`,`option4`,`correct_ans`) values (29,'CSC15',' DMCP',20,47,'C function return ______ value by default?','Charecter','No','Integer','float','Integer'),(28,'CSC15',' DMCP',20,47,'A function can ---------?','perform a task','return a value','All the above','none of the above','All the above'),(26,'CSNW15','DHN',19,52,'A device that convert digital signal to analog signal is -----?','packet','modem','block','both A and B','modem'),(25,'CSNW15','DHN',19,52,'Coaxial cable has conductors with -----?','equal resistence','the same diameter','Both A and B','a common axis','a common axis'),(24,'CSNW15','DHN',19,52,'The area of coverage of a sattelite radio beam is known as ----?','Footprint','Circular polarization','Beam width','Identity','Circular polarization'),(23,'CSNW15','DHN',19,52,'Which of the following is not a guided medium?','Twisted pair cable','Coaxial cable','Fiber obtic cable','Atmosphere','Atmosphere'),(22,'CSNW15','DHN',19,52,'In fiber optics, the signal source is ----- waves?','light','infrared','radio',' very low frequency','light'),(21,'CSNW15','DHN',19,52,'Transmission media is generally categorised as -----?','fixed or unfixed','determinate or indeterminate','guided or unguided','metalic or non metalic','guided or unguided'),(30,'CSC15',' DMCP',20,47,'Which of the following is not a C function?','printf','fprintf','sprintf','tprintf','tprintf'),(31,'CSC15',' DMCP',20,47,'Which of the function is not a header file of C?','ctype.h','string.h','stdlib.h','type.h','type.h'),(32,'CSC15',' DMCP',20,47,'Encapsulation is also known as ------?','Information hiding','Data abstraction','Data about Data','None of these','Information hiding'),(33,'QCJ15',' DMCP',18,49,'java is two things. a programing language and --------?','a platform','an application','both a and b','none of this','a platform'),(34,'QCJ15',' DMCP',18,49,'The default parameter passing mechanism is --------?','call by value','call by reference','call by value result','None of these','call by value'),(35,'QCJ15',' DMCP',18,49,'The parameter passing mechanism for an array is -------?','call by value','call by value result','call by reference','none of these','call by value'),(36,'QCJ15',' DMCP',18,49,'Overloading is otherwise called as ------?','virtual polymorphism','transcient polymorphism','pseudo polymorphism','ad-hoc polymorphism','ad-hoc polymorphism'),(37,'QCJ15',' DMCP',18,49,'A function that calls itself for its processing is known as -------- function?','Recursive','Inline','Nested','Overloaded','Recursive'),(38,'QCJ15',' DMCP',18,49,'How many time a do while loop is guarenteed to loop?','0','1','Depending upon value of the variable','Infinitly','1'),(39,'QCJ15',' DMCP',20,48,'_______ is not a jumb statement in C++?','break','goto','exit','switch','break'),(40,'QCCPP15',' DMCP',20,48,'________ is a selection statement in CPP?','switch','brak','goto','exit','switch'),(41,'QCCPP15',' DMCP',20,48,'The continue statement is _______?','skips the rest of the loop in current iteration ','resumes the program if it is hanged','resume the program if break was applied','None of the above','skips the rest of the loop in current iteration '),(42,'QCCPP15',' DMCP',20,49,'Array is access using ______ approah?','LIFO','FIFO','index number','operator','index number'),(43,'QCCPP15',' DMCP',20,48,'A class having no name is ---------?','is not allowed','cannot have a constructor','cannot have a destructor','cannot be passed as an argument','is not allowed');

/*Table structure for table `tbl_student` */

DROP TABLE IF EXISTS `tbl_student`;

CREATE TABLE `tbl_student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(150) NOT NULL,
  `dept_id` int(11) NOT NULL,
  `course_id` varchar(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(10) NOT NULL,
  `gender` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `contactno` varchar(150) NOT NULL,
  `city` varchar(150) NOT NULL,
  `image` varchar(200) NOT NULL,
  `due` varchar(10) NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_student` */

insert  into `tbl_student`(`student_id`,`fullname`,`dept_id`,`course_id`,`username`,`password`,`gender`,`email`,`contactno`,`city`,`image`,`due`,`status`) values (27,'Ameen  U C',9,'DGMDP','amee','amee','Female','amm@gmail.com','04862277800','Kottayam','uploads/images (2).jpg','yes',0),(26,'Ammu N H',9,'DMOA','ammu','ammu','Female','ammu@gmail.com','04862277313','Ernakulam','uploads/images (3).jpg','yes',0),(25,'Aswathy K S',9,'DHN','achu','achu','Female','achu@gmail.com','9495375950','Ernakulam','uploads/2718.jpg','no',0),(30,'sneha',9,' DMCP','sneha','sneha','Female','sn@gmail.com','83888957','Ernakulam','uploads/$_57.JPG','no',0),(24,'Neena George',10,'DMOAFA','neena','neena','Female','neena@gmail.com','04862277630','Ernakulam','uploads/images.jpg','yes',0),(23,'Nayana',10,'DECom','nayu','nayu','Female','nayu@gmail.com','8301888957','Ernakulam','uploads/images (1).jpg','no',0),(28,'Ameen',9,' DMCP','ameen','ameen','Female','am@gmail.com','9495375950','Ernakulam','uploads/greegerth.jpg','no',0),(29,'Anju Francis',9,' DMCP','anju','anju','Female','anju@gmail.com','9495375950','Ernakulam','uploads/949073-bigthumbnail.jpg','no',0),(31,'amala',9,' DMCP','amala','amala','Female','am@gmail.com','8301888957','Ernakulam','uploads/download (2).jpg','no',0);

/*Table structure for table `tbl_subject` */

DROP TABLE IF EXISTS `tbl_subject`;

CREATE TABLE `tbl_subject` (
  `subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(150) NOT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_subject` */

insert  into `tbl_subject`(`subject_id`,`dept_id`,`course_id`,`subject_code`,`subject_title`) values (46,9,'DMOA','305','MS SQL'),(47,9,' DMCP','401','C programming'),(45,9,'DMOA','304','Open Office'),(43,9,'DMOA','302','MS Excel 2013 & XP using ISM'),(44,9,'DMOA','303','MS Power Point 2013 using ISM'),(42,9,'DMOA','301','MS Word 2013 & XP using ISM'),(41,9,'DGMDP','203','Design and Animation - Dream weaver'),(40,9,'DGMDP','202','ISM-Soft'),(39,9,'DGMDP','201','Adobe Photoshop '),(38,9,'DMCA','102','VB.Net'),(36,9,'DMCA','101','MS SQL'),(48,9,' DMCP','402','Cpp'),(49,9,' DMCP','403','Java Programming'),(50,9,'DHN','501','Basic Electronics'),(51,9,'DHN','502','Hardware Maintenance'),(52,9,'DHN','503','Networking'),(53,10,'DECom','601','Digital Signature '),(54,10,'DECom','602','Network security '),(55,10,'DECom','603','Existing business and channels '),(56,10,'DMOAFA','701','Windows OS '),(57,10,'DMOAFA','702','ISM'),(58,10,'DMOAFA','703','TALLY ERP 9'),(59,13,'BSW10','901','English');

/*Table structure for table `tbl_teacher` */

DROP TABLE IF EXISTS `tbl_teacher`;

CREATE TABLE `tbl_teacher` (
  `teacher_id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `firstname` varchar(150) NOT NULL,
  `lastname` varchar(150) NOT NULL,
  `middlename` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `student_id` int(11) NOT NULL,
  `image` varchar(500) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_teacher` */

insert  into `tbl_teacher`(`teacher_id`,`dept_id`,`username`,`password`,`firstname`,`lastname`,`middlename`,`email`,`student_id`,`image`) values (23,10,'ubais','ubais','Mr. Ubais','S','C','ubai@gmail.com',0,'uploads/images (7).jpg'),(22,10,'ebin','ebin','Mr.Ebin','Thomas','T','ebin@gmail.com',0,'uploads/TF43_01_WH.jpg'),(21,9,'sneha','sneha','Mrs.Sneha','Babu','p','sneha@gmail.com',0,'uploads/images (13).jpg'),(20,9,'athu','athu','Mrs.Athulya','S','Tom','athu@gmail.com',0,'uploads/images (2).jpg'),(18,9,'rasiya','rasiya','Mrs.Rasiya ','H','K','rasi@gmail.com',0,'uploads/imagemagic.jpg'),(19,9,'divya','divya','Mrs.Divya','G','S','divu@gmail.com',0,'uploads/beautiful-flowers.jpg');<table>

	<thead>

		<tr>

			<th></th>

			<th></th>

			<th></th>

			<th></th>

		</tr>

	</thead>

	<tbody>

		<tr>

			<td></td>

			<td></td>

			<td></td>

			<td></td>

		</tr>

		<tr>

			<td></td>

			<td></td>

			<td></td>

			<td></td>

		</tr>

		<tr>

			<td></td>

			<td></td>

			<td></td>

			<td></td>

		</tr>

	</tbody>

</table>

/*Table structure for table `tbl_teacher_subject` */

DROP TABLE IF EXISTS `tbl_teacher_subject`;

CREATE TABLE `tbl_teacher_subject` (
  `teacher_subject_id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_id` int(11) NOT NULL,
  `course_id` varchar(100) NOT NULL,
  `subject_id` int(11) NOT NULL,
  PRIMARY KEY (`teacher_subject_id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_teacher_subject` */

insert  into `tbl_teacher_subject`(`teacher_subject_id`,`teacher_id`,`course_id`,`subject_id`) values (26,19,'DMCA',36),(27,19,'DGMDP',41),(28,19,'DMOA',46),(29,19,' DMCP',48),(30,19,'DHN',52),(31,18,'DMCA',38),(32,18,'DGMDP',40),(33,18,'DMOA',45),(34,18,'DMOA',43),(35,18,' DMCP',49),(36,18,'DHN',50),(37,22,'DECom',53),(38,22,'DECom',54),(39,22,'DMOAFA',57),(40,23,'DECom',55),(41,23,'DECom',53),(42,23,'DECom',54),(46,20,'DHN',51),(44,23,'DMOAFA',58),(45,23,'DMOAFA',57),(47,20,' DMCP',48),(48,20,' DMCP',47),(49,18,'DHN',52),(50,18,'DMOA',46);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
