#
# TABLE STRUCTURE FOR: ambulance_call
#

DROP TABLE IF EXISTS `ambulance_call`;

CREATE TABLE `ambulance_call` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(200) NOT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `contact_no` varchar(30) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(20) DEFAULT NULL,
  `driver` varchar(100) NOT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: appointment
#

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `appointment_no` varchar(100) NOT NULL,
  `date` datetime DEFAULT NULL,
  `patient_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `doctor` varchar(50) DEFAULT NULL,
  `amount` varchar(200) NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `appointment_status` varchar(11) DEFAULT NULL,
  `source` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_opd` varchar(200) NOT NULL,
  `is_ipd` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `appointment` (`id`, `patient_id`, `appointment_no`, `date`, `patient_name`, `gender`, `email`, `mobileno`, `doctor`, `amount`, `message`, `appointment_status`, `source`, `created_at`, `is_opd`, `is_ipd`) VALUES (1, 2, '', '2020-08-30 02:41:00', 'Patrick Lavoisine', 'Male', '', '059652356', '2', '', 'Nouveau patient', 'approved', 'Offline', '2020-08-30 13:42:48', 'yes', 'yes');
INSERT INTO `appointment` (`id`, `patient_id`, `appointment_no`, `date`, `patient_name`, `gender`, `email`, `mobileno`, `doctor`, `amount`, `message`, `appointment_status`, `source`, `created_at`, `is_opd`, `is_ipd`) VALUES (2, 3, 'APPNO2', '2020-08-31 01:25:00', 'Maria Danver', 'Female', 'maria.d@gmail.com', '045987545', '5', '', 'Patiente transférée de l\'établissement sanitaire SLD985', 'approved', 'Offline', '2020-08-31 12:26:39', '', '');


#
# TABLE STRUCTURE FOR: bed
#

DROP TABLE IF EXISTS `bed`;

CREATE TABLE `bed` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `bed_type_id` int NOT NULL,
  `bed_group_id` int NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `bed` (`id`, `name`, `bed_type_id`, `bed_group_id`, `is_active`) VALUES (1, 'Lit 0125', 1, 1, 'yes');
INSERT INTO `bed` (`id`, `name`, `bed_type_id`, `bed_group_id`, `is_active`) VALUES (2, '04598', 1, 1, 'yes');


#
# TABLE STRUCTURE FOR: bed_group
#

DROP TABLE IF EXISTS `bed_group`;

CREATE TABLE `bed_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `floor` varchar(100) NOT NULL,
  `is_active` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `bed_group` (`id`, `name`, `description`, `floor`, `is_active`) VALUES (1, 'VIP', 'Lits réservés aux VIP', '1', 0);


#
# TABLE STRUCTURE FOR: bed_type
#

DROP TABLE IF EXISTS `bed_type`;

CREATE TABLE `bed_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `bed_type` (`id`, `name`) VALUES (1, 'VIP');


#
# TABLE STRUCTURE FOR: birth_report
#

DROP TABLE IF EXISTS `birth_report`;

CREATE TABLE `birth_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ref_no` varchar(200) NOT NULL,
  `opd_ipd_no` varchar(200) NOT NULL,
  `child_name` varchar(200) NOT NULL,
  `child_pic` varchar(200) NOT NULL,
  `gender` varchar(200) NOT NULL,
  `birth_date` datetime NOT NULL,
  `weight` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `mother_pic` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `father_pic` varchar(200) NOT NULL,
  `birth_report` mediumtext NOT NULL,
  `document` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `birth_report` (`id`, `ref_no`, `opd_ipd_no`, `child_name`, `child_pic`, `gender`, `birth_date`, `weight`, `mother_name`, `contact`, `mother_pic`, `father_name`, `father_pic`, `birth_report`, `document`, `address`, `is_active`, `created_at`) VALUES (1, '', 'Consultation', 'Alain Nouveau né', '', 'Male', '2020-09-14 05:16:00', '4.5 kg', '3', '', '', '', '', '', '', '', 'yes', '2020-09-15 16:16:50');


#
# TABLE STRUCTURE FOR: blood_bank_status
#

DROP TABLE IF EXISTS `blood_bank_status`;

CREATE TABLE `blood_bank_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blood_group` varchar(3) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `ceated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (1, 'A+', '0', '2018-08-18 11:40:07');
INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (2, 'B+', '0', '2018-08-18 12:10:55');
INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (3, 'A-', '0', '2018-08-18 12:11:24');
INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (4, 'B-', '0', '2018-08-18 12:11:44');
INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (5, 'O+', '0', '2018-08-18 12:12:06');
INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (6, 'O-', '0', '2018-08-18 12:12:20');
INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (7, 'AB+', '0', '2018-08-18 12:12:36');
INSERT INTO `blood_bank_status` (`id`, `blood_group`, `status`, `ceated_at`) VALUES (8, 'AB-', '0', '2018-08-18 12:13:18');


#
# TABLE STRUCTURE FOR: blood_donor
#

DROP TABLE IF EXISTS `blood_donor`;

CREATE TABLE `blood_donor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `donor_name` varchar(100) DEFAULT NULL,
  `age` varchar(11) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `blood_group` varchar(11) DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `contact_no` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: blood_donor_cycle
#

DROP TABLE IF EXISTS `blood_donor_cycle`;

CREATE TABLE `blood_donor_cycle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blood_donor_id` int NOT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `lot` varchar(11) DEFAULT NULL,
  `bag_no` varchar(11) DEFAULT NULL,
  `quantity` varchar(11) DEFAULT NULL,
  `donate_date` date NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: blood_issue
#

DROP TABLE IF EXISTS `blood_issue`;

CREATE TABLE `blood_issue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(200) NOT NULL,
  `date_of_issue` datetime DEFAULT NULL,
  `recieve_to` varchar(50) DEFAULT NULL,
  `blood_group` varchar(50) DEFAULT NULL,
  `gender` varchar(50) DEFAULT NULL,
  `doctor` varchar(200) DEFAULT NULL,
  `institution` varchar(100) DEFAULT NULL,
  `technician` varchar(50) DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `donor_name` varchar(50) DEFAULT NULL,
  `lot` varchar(20) DEFAULT NULL,
  `bag_no` varchar(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: charge_categories
#

DROP TABLE IF EXISTS `charge_categories`;

CREATE TABLE `charge_categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `charge_type` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: charges
#

DROP TABLE IF EXISTS `charges`;

CREATE TABLE `charges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `charge_type` varchar(200) NOT NULL,
  `charge_category` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `code` varchar(100) NOT NULL,
  `standard_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: complaint
#

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(100) NOT NULL,
  `source` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `email` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `description` text NOT NULL,
  `action_taken` varchar(200) NOT NULL,
  `assigned` varchar(50) NOT NULL,
  `note` text NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: complaint_type
#

DROP TABLE IF EXISTS `complaint_type`;

CREATE TABLE `complaint_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `complaint_type` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: consult_charges
#

DROP TABLE IF EXISTS `consult_charges`;

CREATE TABLE `consult_charges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `doctor` int NOT NULL,
  `standard_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: consultant_register
#

DROP TABLE IF EXISTS `consultant_register`;

CREATE TABLE `consultant_register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `ipd_id` int NOT NULL,
  `date` varchar(100) DEFAULT NULL,
  `ins_date` varchar(50) DEFAULT NULL,
  `instruction` varchar(200) NOT NULL,
  `cons_doctor` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `consultant_register` (`id`, `patient_id`, `ipd_id`, `date`, `ins_date`, `instruction`, `cons_doctor`) VALUES (1, 1, 1, '2020-08-28 18:26:00', '2020-08-28', 'Examen Général', 2);
INSERT INTO `consultant_register` (`id`, `patient_id`, `ipd_id`, `date`, `ins_date`, `instruction`, `cons_doctor`) VALUES (2, 2, 2, '2020-08-30 13:53:00', '2020-08-30', 'Examen Thoracique', 3);
INSERT INTO `consultant_register` (`id`, `patient_id`, `ipd_id`, `date`, `ins_date`, `instruction`, `cons_doctor`) VALUES (3, 2, 2, '2020-08-30 02:53:00', '2020-08-31', 'Epreuve physique', 3);
INSERT INTO `consultant_register` (`id`, `patient_id`, `ipd_id`, `date`, `ins_date`, `instruction`, `cons_doctor`) VALUES (4, 1, 1, '2020-08-31 09:46:00', '2020-08-31', 'Prise en charge', 2);


#
# TABLE STRUCTURE FOR: content_for
#

DROP TABLE IF EXISTS `content_for`;

CREATE TABLE `content_for` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role` varchar(50) DEFAULT NULL,
  `content_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `content_id` (`content_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `content_for_ibfk_1` FOREIGN KEY (`content_id`) REFERENCES `contents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `content_for_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: contents
#

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `is_public` varchar(10) DEFAULT 'No',
  `class_id` int DEFAULT NULL,
  `cls_sec_id` int NOT NULL,
  `file` varchar(250) DEFAULT NULL,
  `created_by` int NOT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: custom_field_values
#

DROP TABLE IF EXISTS `custom_field_values`;

CREATE TABLE `custom_field_values` (
  `id` int NOT NULL AUTO_INCREMENT,
  `belong_table_id` int DEFAULT NULL,
  `custom_field_id` int DEFAULT NULL,
  `field_value` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: custom_fields
#

DROP TABLE IF EXISTS `custom_fields`;

CREATE TABLE `custom_fields` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `belong_to` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `bs_column` int DEFAULT NULL,
  `validation` int DEFAULT '0',
  `field_values` mediumtext,
  `show_table` varchar(100) DEFAULT NULL,
  `visible_on_table` int NOT NULL,
  `weight` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: death_report
#

DROP TABLE IF EXISTS `death_report`;

CREATE TABLE `death_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `opdipd_no` varchar(200) NOT NULL,
  `patient` varchar(200) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `death_date` datetime NOT NULL,
  `guardian_name` varchar(200) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `address` varchar(200) NOT NULL,
  `death_report` text NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: department
#

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `id` int NOT NULL AUTO_INCREMENT,
  `department_name` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (1, 'Laboratoire d\'Analyses Médicales', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (2, 'Hématologie', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (3, 'Gynécologie Obstétrique', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (4, 'Cardiologie', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (5, 'Pneumologie', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (6, 'Pharmacie', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (7, 'Réanimation', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (8, 'Urgences', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (9, 'Rhumatologie', 'yes');
INSERT INTO `department` (`id`, `department_name`, `is_active`) VALUES (10, 'Pédiatrie', 'yes');


#
# TABLE STRUCTURE FOR: diagnosis
#

DROP TABLE IF EXISTS `diagnosis`;

CREATE TABLE `diagnosis` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `report_type` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `report_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `diagnosis` (`id`, `patient_id`, `report_type`, `document`, `description`, `report_date`) VALUES (1, 2, 'Analyses du sang', '', 'Présence d\'anémie', '2020-08-30');


#
# TABLE STRUCTURE FOR: dispatch_receive
#

DROP TABLE IF EXISTS `dispatch_receive`;

CREATE TABLE `dispatch_receive` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference_no` varchar(50) NOT NULL,
  `to_title` varchar(100) NOT NULL,
  `address` varchar(500) NOT NULL,
  `note` varchar(500) NOT NULL,
  `from_title` varchar(200) NOT NULL,
  `date` varchar(20) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `type` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: email_config
#

DROP TABLE IF EXISTS `email_config`;

CREATE TABLE `email_config` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `email_type` varchar(100) DEFAULT NULL,
  `smtp_server` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `smtp_username` varchar(100) DEFAULT NULL,
  `smtp_password` varchar(100) DEFAULT NULL,
  `ssl_tls` varchar(100) DEFAULT NULL,
  `is_active` varchar(10) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `email_config` (`id`, `email_type`, `smtp_server`, `smtp_port`, `smtp_username`, `smtp_password`, `ssl_tls`, `is_active`, `created_at`) VALUES (2, 'sendmail', '', '', '', '', '', 'yes', '2019-11-01 12:51:35');


#
# TABLE STRUCTURE FOR: enquiry
#

DROP TABLE IF EXISTS `enquiry`;

CREATE TABLE `enquiry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` mediumtext NOT NULL,
  `reference` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `note` mediumtext NOT NULL,
  `source` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `assigned` varchar(100) NOT NULL,
  `class` int NOT NULL,
  `no_of_child` varchar(11) DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: enquiry_type
#

DROP TABLE IF EXISTS `enquiry_type`;

CREATE TABLE `enquiry_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enquiry_type` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: events
#

DROP TABLE IF EXISTS `events`;

CREATE TABLE `events` (
  `id` int NOT NULL AUTO_INCREMENT,
  `event_title` varchar(200) NOT NULL,
  `event_description` varchar(300) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime NOT NULL,
  `event_type` varchar(100) NOT NULL,
  `event_color` varchar(200) NOT NULL,
  `event_for` varchar(100) NOT NULL,
  `role_id` int NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

INSERT INTO `events` (`id`, `event_title`, `event_description`, `start_date`, `end_date`, `event_type`, `event_color`, `event_for`, `role_id`, `is_active`) VALUES (3, 'Event 154', 'Réunion', '2020-08-31 03:30:00', '2020-08-31 05:30:00', 'public', '#fb3b3b', '0', 0, '');
INSERT INTO `events` (`id`, `event_title`, `event_description`, `start_date`, `end_date`, `event_type`, `event_color`, `event_for`, `role_id`, `is_active`) VALUES (4, 'Comission d\'inspection de la Pharmacie centrale', 'Pharmacie centrale', '2020-09-02 05:30:00', '2020-09-02 07:30:00', 'public', '#7cb342', '0', 0, '');


#
# TABLE STRUCTURE FOR: expense_head
#

DROP TABLE IF EXISTS `expense_head`;

CREATE TABLE `expense_head` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exp_category` varchar(50) DEFAULT NULL,
  `description` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: expenses
#

DROP TABLE IF EXISTS `expenses`;

CREATE TABLE `expenses` (
  `id` int NOT NULL AUTO_INCREMENT,
  `exp_head_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `documents` varchar(255) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: floor
#

DROP TABLE IF EXISTS `floor`;

CREATE TABLE `floor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `floor` (`id`, `name`, `description`) VALUES (1, 'Sous-sol', 'Sous-sol');


#
# TABLE STRUCTURE FOR: follow_up
#

DROP TABLE IF EXISTS `follow_up`;

CREATE TABLE `follow_up` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enquiry_id` int NOT NULL,
  `date` date NOT NULL,
  `next_date` date NOT NULL,
  `response` text NOT NULL,
  `note` text NOT NULL,
  `followup_by` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_media_gallery
#

DROP TABLE IF EXISTS `front_cms_media_gallery`;

CREATE TABLE `front_cms_media_gallery` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image` varchar(300) DEFAULT NULL,
  `thumb_path` varchar(300) DEFAULT NULL,
  `dir_path` varchar(300) DEFAULT NULL,
  `img_name` varchar(300) DEFAULT NULL,
  `thumb_name` varchar(300) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `file_type` varchar(100) NOT NULL,
  `file_size` varchar(100) NOT NULL,
  `vid_url` mediumtext NOT NULL,
  `vid_title` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_menu_items
#

DROP TABLE IF EXISTS `front_cms_menu_items`;

CREATE TABLE `front_cms_menu_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu_id` int NOT NULL,
  `menu` varchar(100) DEFAULT NULL,
  `page_id` int NOT NULL,
  `parent_id` int NOT NULL,
  `ext_url` mediumtext,
  `open_new_tab` int DEFAULT '0',
  `ext_url_link` mediumtext,
  `slug` varchar(200) DEFAULT NULL,
  `weight` int DEFAULT NULL,
  `publish` int NOT NULL DEFAULT '0',
  `description` mediumtext,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (16, 2, 'Home', 1, 0, NULL, NULL, NULL, 'home-1', NULL, 0, NULL, 'no', '2018-07-14 08:44:12');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (23, 1, 'Appointment', 77, 0, '1', NULL, 'http://yourdomainname.com/form/appointment', 'appointment', 2, 0, NULL, 'no', '2019-11-01 07:36:32');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (26, 1, 'Home', 1, 0, NULL, NULL, NULL, 'home', NULL, 0, NULL, 'no', '2019-01-24 08:48:17');
INSERT INTO `front_cms_menu_items` (`id`, `menu_id`, `menu`, `page_id`, `parent_id`, `ext_url`, `open_new_tab`, `ext_url_link`, `slug`, `weight`, `publish`, `description`, `is_active`, `created_at`) VALUES (27, 2, 'Appointment', 0, 0, '1', NULL, 'http://yourdomainname.com/form/appointment', 'appointment-1', NULL, 0, NULL, 'no', '2019-11-02 16:24:41');


#
# TABLE STRUCTURE FOR: front_cms_menus
#

DROP TABLE IF EXISTS `front_cms_menus`;

CREATE TABLE `front_cms_menus` (
  `id` int NOT NULL AUTO_INCREMENT,
  `menu` varchar(100) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `description` mediumtext,
  `open_new_tab` int NOT NULL DEFAULT '0',
  `ext_url` mediumtext NOT NULL,
  `ext_url_link` mediumtext NOT NULL,
  `publish` int NOT NULL DEFAULT '0',
  `content_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES (1, 'Main Menu', 'main-menu', 'Main menu', 0, '', '', 0, 'default', 'no', '2018-04-20 09:24:49');
INSERT INTO `front_cms_menus` (`id`, `menu`, `slug`, `description`, `open_new_tab`, `ext_url`, `ext_url_link`, `publish`, `content_type`, `is_active`, `created_at`) VALUES (2, 'Bottom Menu', 'bottom-menu', 'Bottom Menu', 0, '', '', 0, 'default', 'no', '2018-04-20 09:24:55');


#
# TABLE STRUCTURE FOR: front_cms_page_contents
#

DROP TABLE IF EXISTS `front_cms_page_contents`;

CREATE TABLE `front_cms_page_contents` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_id` int DEFAULT NULL,
  `content_type` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  CONSTRAINT `front_cms_page_contents_ibfk_1` FOREIGN KEY (`page_id`) REFERENCES `front_cms_pages` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_pages
#

DROP TABLE IF EXISTS `front_cms_pages`;

CREATE TABLE `front_cms_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_type` varchar(10) NOT NULL DEFAULT 'manual',
  `is_homepage` int DEFAULT '0',
  `title` varchar(250) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `meta_title` mediumtext,
  `meta_description` mediumtext,
  `meta_keyword` mediumtext,
  `feature_image` varchar(200) NOT NULL,
  `description` longtext,
  `publish_date` date NOT NULL,
  `publish` int DEFAULT '0',
  `sidebar` int DEFAULT '0',
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (1, 'default', 1, 'Home', 'page/home', 'page', 'home', '', '', '', '', '<p>Home page</p>', '0000-00-00', 1, 1, 'no', '2019-01-24 08:33:59');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (2, 'default', 0, 'Complain', 'page/complain', 'page', 'complain', 'Complain form', '                                                                                                                                                                                    complain form                                                                                                                                                                                                                                ', 'complain form', '', '<div class=\"col-md-12 col-sm-12\">\r\n<h2 class=\"text-center\">&nbsp;</h2>\r\n\r\n<p class=\"text-center\">[form-builder:complain]</p>\r\n</div>', '0000-00-00', 1, 1, 'no', '2019-01-24 08:30:12');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (54, 'default', 0, '404 page', 'page/404-page', 'page', '404-page', '', '                                ', '', '', '<html>\r\n<head>\r\n <title></title>\r\n</head>\r\n<body>\r\n<p>404 page found</p>\r\n</body>\r\n</html>', '0000-00-00', 0, NULL, 'no', '2018-05-18 09:16:04');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (76, 'default', 0, 'Contact us', 'page/contact-us', 'page', 'contact-us', '', '', '', '', '<p>[form-builder:contact_us]</p>', '0000-00-00', 0, NULL, 'no', '2019-01-24 08:31:58');
INSERT INTO `front_cms_pages` (`id`, `page_type`, `is_homepage`, `title`, `url`, `type`, `slug`, `meta_title`, `meta_description`, `meta_keyword`, `feature_image`, `description`, `publish_date`, `publish`, `sidebar`, `is_active`, `created_at`) VALUES (77, 'manual', 0, 'our-appointment', 'page/our-appointment', 'page', 'our-appointment', '', '', '', '', '<form action=\"welcome/appointment\" method=\"get\">\r\n  First name: <input type=\"text\" name=\"fname\"><br>\r\n  Last name: <input type=\"text\" name=\"lname\"><br>\r\n  <input type=\"submit\" value=\"Submit\">\r\n</form>', '0000-00-00', 0, 1, 'no', '2019-11-01 07:32:48');


#
# TABLE STRUCTURE FOR: front_cms_program_photos
#

DROP TABLE IF EXISTS `front_cms_program_photos`;

CREATE TABLE `front_cms_program_photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `program_id` int DEFAULT NULL,
  `media_gallery_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `program_id` (`program_id`),
  CONSTRAINT `front_cms_program_photos_ibfk_1` FOREIGN KEY (`program_id`) REFERENCES `front_cms_programs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_programs
#

DROP TABLE IF EXISTS `front_cms_programs`;

CREATE TABLE `front_cms_programs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `url` mediumtext,
  `title` varchar(200) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `event_start` date DEFAULT NULL,
  `event_end` date DEFAULT NULL,
  `event_venue` mediumtext,
  `description` mediumtext,
  `is_active` varchar(10) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `meta_title` mediumtext NOT NULL,
  `meta_description` mediumtext NOT NULL,
  `meta_keyword` mediumtext NOT NULL,
  `feature_image` mediumtext NOT NULL,
  `publish_date` date NOT NULL,
  `publish` varchar(10) DEFAULT '0',
  `sidebar` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: front_cms_settings
#

DROP TABLE IF EXISTS `front_cms_settings`;

CREATE TABLE `front_cms_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `theme` varchar(50) DEFAULT NULL,
  `is_active_rtl` int DEFAULT '0',
  `is_active_front_cms` int DEFAULT '0',
  `is_active_sidebar` int DEFAULT '0',
  `logo` varchar(200) DEFAULT NULL,
  `contact_us_email` varchar(100) DEFAULT NULL,
  `complain_form_email` varchar(100) DEFAULT NULL,
  `sidebar_options` mediumtext NOT NULL,
  `fb_url` varchar(200) NOT NULL,
  `twitter_url` varchar(200) NOT NULL,
  `youtube_url` varchar(200) NOT NULL,
  `google_plus` varchar(200) NOT NULL,
  `instagram_url` varchar(200) NOT NULL,
  `pinterest_url` varchar(200) NOT NULL,
  `linkedin_url` varchar(200) NOT NULL,
  `google_analytics` mediumtext,
  `footer_text` varchar(500) DEFAULT NULL,
  `fav_icon` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `front_cms_settings` (`id`, `theme`, `is_active_rtl`, `is_active_front_cms`, `is_active_sidebar`, `logo`, `contact_us_email`, `complain_form_email`, `sidebar_options`, `fb_url`, `twitter_url`, `youtube_url`, `google_plus`, `instagram_url`, `pinterest_url`, `linkedin_url`, `google_analytics`, `footer_text`, `fav_icon`, `created_at`) VALUES (1, 'default', NULL, 0, 0, '', '', '', '[\"news\",\"complain\"]', '', '', '', '', '', '', '', '', '', '', '2019-11-02 16:23:38');


#
# TABLE STRUCTURE FOR: general_calls
#

DROP TABLE IF EXISTS `general_calls`;

CREATE TABLE `general_calls` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `contact` varchar(12) NOT NULL,
  `date` date NOT NULL,
  `description` varchar(500) NOT NULL,
  `follow_up_date` date NOT NULL,
  `call_dureation` varchar(50) NOT NULL,
  `note` mediumtext NOT NULL,
  `call_type` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: income
#

DROP TABLE IF EXISTS `income`;

CREATE TABLE `income` (
  `id` int NOT NULL AUTO_INCREMENT,
  `inc_head_id` varchar(11) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `invoice_no` varchar(200) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` decimal(15,2) DEFAULT NULL,
  `note` text,
  `is_active` varchar(255) DEFAULT 'yes',
  `is_deleted` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `documents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: income_head
#

DROP TABLE IF EXISTS `income_head`;

CREATE TABLE `income_head` (
  `id` int NOT NULL AUTO_INCREMENT,
  `income_category` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `is_deleted` varchar(255) NOT NULL DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ipd_billing
#

DROP TABLE IF EXISTS `ipd_billing`;

CREATE TABLE `ipd_billing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `ipd_id` int NOT NULL,
  `discount` int NOT NULL,
  `other_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `gross_total` decimal(15,2) NOT NULL,
  `net_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `generated_by` int NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `ipd_billing` (`id`, `patient_id`, `ipd_id`, `discount`, `other_charge`, `date`, `tax`, `gross_total`, `net_amount`, `total_amount`, `generated_by`, `status`) VALUES (1, 1, 1, 0, '0', '2020-08-31', '0.00', '0.00', '0.00', '0.00', 2, 'paid');
INSERT INTO `ipd_billing` (`id`, `patient_id`, `ipd_id`, `discount`, `other_charge`, `date`, `tax`, `gross_total`, `net_amount`, `total_amount`, `generated_by`, `status`) VALUES (2, 2, 2, 0, '0', '2020-08-31', '0.00', '0.00', '0.00', '0.00', 2, 'paid');


#
# TABLE STRUCTURE FOR: ipd_details
#

DROP TABLE IF EXISTS `ipd_details`;

CREATE TABLE `ipd_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `height` varchar(5) DEFAULT NULL,
  `weight` varchar(5) DEFAULT NULL,
  `bp` varchar(20) DEFAULT NULL,
  `ipd_no` varchar(200) NOT NULL,
  `room` varchar(100) NOT NULL,
  `bed` varchar(100) NOT NULL,
  `bed_group_id` varchar(10) DEFAULT NULL,
  `case_type` varchar(100) NOT NULL,
  `casualty` varchar(100) NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `refference` varchar(200) NOT NULL,
  `cons_doctor` int NOT NULL,
  `amount` varchar(100) NOT NULL,
  `credit_limit` varchar(100) NOT NULL,
  `tax` varchar(100) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  `discharged` varchar(200) NOT NULL,
  `discharged_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `ipd_details` (`id`, `patient_id`, `height`, `weight`, `bp`, `ipd_no`, `room`, `bed`, `bed_group_id`, `case_type`, `casualty`, `symptoms`, `known_allergies`, `note`, `refference`, `cons_doctor`, `amount`, `credit_limit`, `tax`, `payment_mode`, `date`, `discharged`, `discharged_date`) VALUES (1, 1, '', '', '', 'IPDN1', '', '1', '1', '', 'Non', '', '', '', '', 2, '', '', '', '', '2020-08-27 07:23:00', 'yes', '2020-08-31');
INSERT INTO `ipd_details` (`id`, `patient_id`, `height`, `weight`, `bp`, `ipd_no`, `room`, `bed`, `bed_group_id`, `case_type`, `casualty`, `symptoms`, `known_allergies`, `note`, `refference`, `cons_doctor`, `amount`, `credit_limit`, `tax`, `payment_mode`, `date`, `discharged`, `discharged_date`) VALUES (2, 2, '', '', '', 'IPDN2', '', '2', '1', '', 'Non', '', '', '', '', 2, '', '', '', '', '2020-08-30 02:41:00', 'yes', '2020-08-31');


#
# TABLE STRUCTURE FOR: ipd_prescription_basic
#

DROP TABLE IF EXISTS `ipd_prescription_basic`;

CREATE TABLE `ipd_prescription_basic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ipd_id` int NOT NULL,
  `header_note` varchar(100) NOT NULL,
  `footer_note` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ipd_prescription_details
#

DROP TABLE IF EXISTS `ipd_prescription_details`;

CREATE TABLE `ipd_prescription_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `basic_id` int NOT NULL,
  `ipd_id` int NOT NULL,
  `medicine_category_id` int NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `instruction` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item
#

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_category_id` int DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `unit` varchar(200) NOT NULL,
  `item_photo` varchar(225) DEFAULT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `item_store_id` int DEFAULT NULL,
  `item_supplier_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item_category
#

DROP TABLE IF EXISTS `item_category`;

CREATE TABLE `item_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_category` varchar(255) NOT NULL,
  `is_active` varchar(255) NOT NULL DEFAULT 'yes',
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item_issue
#

DROP TABLE IF EXISTS `item_issue`;

CREATE TABLE `item_issue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `issue_type` varchar(15) DEFAULT NULL,
  `issue_to` varchar(100) DEFAULT NULL,
  `issue_by` varchar(100) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `item_category_id` int DEFAULT NULL,
  `item_id` int DEFAULT NULL,
  `quantity` int NOT NULL,
  `note` text NOT NULL,
  `is_returned` int NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_active` varchar(10) DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `item_category_id` (`item_category_id`),
  CONSTRAINT `item_issue_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_issue_ibfk_2` FOREIGN KEY (`item_category_id`) REFERENCES `item_category` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item_stock
#

DROP TABLE IF EXISTS `item_stock`;

CREATE TABLE `item_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_id` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `symbol` varchar(10) NOT NULL DEFAULT '+',
  `store_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `purchase_price` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `attachment` varchar(250) DEFAULT NULL,
  `description` text NOT NULL,
  `is_active` varchar(10) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `supplier_id` (`supplier_id`),
  KEY `store_id` (`store_id`),
  CONSTRAINT `item_stock_ibfk_1` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_2` FOREIGN KEY (`supplier_id`) REFERENCES `item_supplier` (`id`) ON DELETE CASCADE,
  CONSTRAINT `item_stock_ibfk_3` FOREIGN KEY (`store_id`) REFERENCES `item_store` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item_store
#

DROP TABLE IF EXISTS `item_store`;

CREATE TABLE `item_store` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_store` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: item_supplier
#

DROP TABLE IF EXISTS `item_supplier`;

CREATE TABLE `item_supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `item_supplier` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_phone` varchar(255) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: lab
#

DROP TABLE IF EXISTS `lab`;

CREATE TABLE `lab` (
  `id` int NOT NULL AUTO_INCREMENT,
  `lab_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: languages
#

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language` varchar(50) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_deleted` varchar(10) NOT NULL DEFAULT 'yes',
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;

INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (1, 'Azerbaijan', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (2, 'Albanian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (4, 'English', 'en', 'no', 'no', '2018-12-01 10:08:15');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (5, 'Arabic', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (7, 'Afrikaans', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (8, 'Basque', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (11, 'Bengali', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (13, 'Bosnian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (14, 'Welsh', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (15, 'Hungarian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (16, 'Vietnamese', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (17, 'Haitian (Creole)', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (18, 'Galician', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (19, 'Dutch', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (21, 'Greek', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (22, 'Georgian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (23, 'Gujarati', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (24, 'Danish', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (25, 'Hebrew', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (26, 'Yiddish', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (27, 'Indonesian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (28, 'Irish', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (29, 'Italian', 'it', 'no', 'no', '2018-12-01 10:07:03');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (30, 'Icelandic', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (31, 'Spanish', 'es', 'no', 'no', '2018-12-01 10:09:37');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (33, 'Kannada', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (34, 'Catalan', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (36, 'Chinese', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (37, 'Korean', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (38, 'Xhosa', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (39, 'Latin', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (40, 'Latvian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (41, 'Lithuanian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (43, 'Malagasy', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (44, 'Malay', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (45, 'Malayalam', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (46, 'Maltese', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (47, 'Macedonian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (48, 'Maori', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (49, 'Marathi', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (51, 'Mongolian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (52, 'German', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (53, 'Nepali', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (54, 'Norwegian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (55, 'Punjabi', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (57, 'Persian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (59, 'Portuguese', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (60, 'Romanian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (61, 'Russian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (62, 'Cebuano', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (64, 'Sinhala', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (65, 'Slovakian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (66, 'Slovenian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (67, 'Swahili', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (68, 'Sundanese', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (70, 'Thai', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (71, 'Tagalog', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (72, 'Tamil', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (74, 'Telugu', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (75, 'Turkish', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (77, 'Uzbek', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (79, 'Urdu', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (80, 'Finnish', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (81, 'French', 'fr', 'no', 'no', '2018-12-01 10:08:47');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (82, 'Hindi', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (84, 'Czech', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (85, 'Swedish', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (86, 'Scottish', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (87, 'Estonian', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (88, 'Esperanto', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (89, 'Javanese', '', 'no', 'no', '2017-04-06 05:08:33');
INSERT INTO `languages` (`id`, `language`, `short_code`, `is_deleted`, `is_active`, `created_at`) VALUES (90, 'Japanese', '', 'no', 'no', '2017-04-06 05:08:33');


#
# TABLE STRUCTURE FOR: leave_types
#

DROP TABLE IF EXISTS `leave_types`;

CREATE TABLE `leave_types` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: medicine_bad_stock
#

DROP TABLE IF EXISTS `medicine_bad_stock`;

CREATE TABLE `medicine_bad_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pharmacy_id` int NOT NULL,
  `outward_date` date NOT NULL,
  `expiry_date` varchar(200) NOT NULL,
  `batch_no` varchar(200) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: medicine_batch_details
#

DROP TABLE IF EXISTS `medicine_batch_details`;

CREATE TABLE `medicine_batch_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplier_bill_basic_id` varchar(100) NOT NULL,
  `medicine_category_id` varchar(200) NOT NULL,
  `pharmacy_id` int NOT NULL,
  `inward_date` datetime NOT NULL,
  `expiry_date` varchar(100) DEFAULT NULL,
  `expiry_date_format` date NOT NULL,
  `batch_no` varchar(100) NOT NULL,
  `packing_qty` varchar(100) NOT NULL,
  `purchase_rate_packing` varchar(100) NOT NULL,
  `quantity` varchar(200) NOT NULL,
  `mrp` varchar(11) DEFAULT NULL,
  `purchase_price` varchar(200) NOT NULL,
  `sale_rate` varchar(11) DEFAULT NULL,
  `batch_amount` decimal(10,2) NOT NULL,
  `amount` varchar(100) DEFAULT NULL,
  `available_quantity` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `medicine_batch_details` (`id`, `supplier_bill_basic_id`, `medicine_category_id`, `pharmacy_id`, `inward_date`, `expiry_date`, `expiry_date_format`, `batch_no`, `packing_qty`, `purchase_rate_packing`, `quantity`, `mrp`, `purchase_price`, `sale_rate`, `batch_amount`, `amount`, `available_quantity`, `created_at`) VALUES (1, '1', '1', 2, '2020-09-15 14:26:00', 'Mar/2021', '0000-00-00', 'L0005', '6000', '', '6000', '120', '120', '140', '0.00', '720000', '5998', '2020-09-15 14:28:29');
INSERT INTO `medicine_batch_details` (`id`, `supplier_bill_basic_id`, `medicine_category_id`, `pharmacy_id`, `inward_date`, `expiry_date`, `expiry_date_format`, `batch_no`, `packing_qty`, `purchase_rate_packing`, `quantity`, `mrp`, `purchase_price`, `sale_rate`, `batch_amount`, `amount`, `available_quantity`, `created_at`) VALUES (2, '1', '2', 1, '2020-09-15 14:26:00', 'Aug/2021', '0000-00-00', 'L0009', '6000', '', '6000', '400', '400', '450', '0.00', '2400000', '6000', '2020-09-15 14:28:29');


#
# TABLE STRUCTURE FOR: medicine_category
#

DROP TABLE IF EXISTS `medicine_category`;

CREATE TABLE `medicine_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_category` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `medicine_category` (`id`, `medicine_category`) VALUES (1, 'Antalgiques');
INSERT INTO `medicine_category` (`id`, `medicine_category`) VALUES (2, 'Anti-inflammatoires');


#
# TABLE STRUCTURE FOR: medicine_dosage
#

DROP TABLE IF EXISTS `medicine_dosage`;

CREATE TABLE `medicine_dosage` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_category_id` int NOT NULL,
  `dosage_form` varchar(100) NOT NULL,
  `dosage` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `medicine_dosage` (`id`, `medicine_category_id`, `dosage_form`, `dosage`) VALUES (1, 1, '', '25 mg');
INSERT INTO `medicine_dosage` (`id`, `medicine_category_id`, `dosage_form`, `dosage`) VALUES (2, 1, '', 'Gellules');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `message` text,
  `send_mail` varchar(10) DEFAULT '0',
  `send_sms` varchar(10) DEFAULT '0',
  `is_group` varchar(10) DEFAULT '0',
  `is_individual` varchar(10) DEFAULT '0',
  `is_class` int NOT NULL DEFAULT '0',
  `group_list` text,
  `user_list` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: migrations
#

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `version` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: notification_roles
#

DROP TABLE IF EXISTS `notification_roles`;

CREATE TABLE `notification_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `send_notification_id` int DEFAULT NULL,
  `role_id` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `send_notification_id` (`send_notification_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `notification_roles_ibfk_1` FOREIGN KEY (`send_notification_id`) REFERENCES `send_notification` (`id`) ON DELETE CASCADE,
  CONSTRAINT `notification_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: notification_setting
#

DROP TABLE IF EXISTS `notification_setting`;

CREATE TABLE `notification_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `is_mail` varchar(10) DEFAULT '0',
  `is_sms` varchar(10) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (5, 'login_credential', '1', '0', '2019-03-09 16:35:53');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (6, 'patient_registration', '0', '0', '2018-12-26 07:38:55');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (7, 'patient_discharged', '1', '0', '2019-03-09 16:35:53');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (8, 'patient_revisit', '1', '0', '2019-03-09 16:35:53');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (9, 'patient_discharge', '0', '0', '2018-12-23 12:54:57');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (10, 'appointment', '1', '0', '2019-03-09 16:35:53');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (11, 'opd_patient_registration', '1', '0', '2019-03-09 16:35:53');
INSERT INTO `notification_setting` (`id`, `type`, `is_mail`, `is_sms`, `created_at`) VALUES (12, 'ipd_patient_registration', '1', '0', '2019-03-09 16:35:53');


#
# TABLE STRUCTURE FOR: opd_billing
#

DROP TABLE IF EXISTS `opd_billing`;

CREATE TABLE `opd_billing` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `opd_id` int NOT NULL,
  `discount` int NOT NULL,
  `other_charge` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `gross_total` decimal(15,2) NOT NULL,
  `net_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `generated_by` int NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `opd_billing` (`id`, `patient_id`, `opd_id`, `discount`, `other_charge`, `date`, `tax`, `gross_total`, `net_amount`, `total_amount`, `generated_by`, `status`) VALUES (1, 3, 5, 0, '0', '2020-08-31', '0.00', '0.00', '-16000.00', '0.00', 2, 'paid');


#
# TABLE STRUCTURE FOR: opd_details
#

DROP TABLE IF EXISTS `opd_details`;

CREATE TABLE `opd_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `opd_no` varchar(100) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `case_type` varchar(200) NOT NULL,
  `casualty` varchar(200) NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `bp` varchar(200) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `note_remark` varchar(225) DEFAULT NULL,
  `refference` varchar(100) NOT NULL,
  `cons_doctor` int NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `header_note` varchar(200) NOT NULL,
  `footer_note` varchar(200) NOT NULL,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `opd_details` (`id`, `patient_id`, `opd_no`, `appointment_date`, `case_type`, `casualty`, `symptoms`, `bp`, `height`, `weight`, `known_allergies`, `note_remark`, `refference`, `cons_doctor`, `amount`, `tax`, `payment_mode`, `header_note`, `footer_note`, `generated_by`) VALUES (1, 1, 'OPDN1', '2020-08-28 07:30:00', '', 'Non', '', '', '', '', '', '', '', 5, '36000.00', '0.00', 'Cash', '', '', 1);
INSERT INTO `opd_details` (`id`, `patient_id`, `opd_no`, `appointment_date`, `case_type`, `casualty`, `symptoms`, `bp`, `height`, `weight`, `known_allergies`, `note_remark`, `refference`, `cons_doctor`, `amount`, `tax`, `payment_mode`, `header_note`, `footer_note`, `generated_by`) VALUES (2, 1, 'OPDN2', '2020-08-30 03:03:00', '', 'Non', '', '', '', '', '', '', '', 3, '32000.00', '0.00', 'Cash', '', '', 1);
INSERT INTO `opd_details` (`id`, `patient_id`, `opd_no`, `appointment_date`, `case_type`, `casualty`, `symptoms`, `bp`, `height`, `weight`, `known_allergies`, `note_remark`, `refference`, `cons_doctor`, `amount`, `tax`, `payment_mode`, `header_note`, `footer_note`, `generated_by`) VALUES (3, 2, 'OPDN3', '2020-08-30 02:41:00', '', 'Non', '', '', '', '', '', '', '', 3, '3200.00', '0.00', 'Cash', '', '', 1);
INSERT INTO `opd_details` (`id`, `patient_id`, `opd_no`, `appointment_date`, `case_type`, `casualty`, `symptoms`, `bp`, `height`, `weight`, `known_allergies`, `note_remark`, `refference`, `cons_doctor`, `amount`, `tax`, `payment_mode`, `header_note`, `footer_note`, `generated_by`) VALUES (4, 3, 'OPDN4', '2020-08-31 01:25:00', '', 'Non', 'Hyperthermie', '', '180', '56', '', '', '', 5, '16000.00', '0.00', 'Online', '', '', 1);
INSERT INTO `opd_details` (`id`, `patient_id`, `opd_no`, `appointment_date`, `case_type`, `casualty`, `symptoms`, `bp`, `height`, `weight`, `known_allergies`, `note_remark`, `refference`, `cons_doctor`, `amount`, `tax`, `payment_mode`, `header_note`, `footer_note`, `generated_by`) VALUES (5, 3, 'OPDN5', '2020-08-31 01:35:00', '', 'Non', 'Hyperthermie', '', '180', '', '', '', '', 2, '16000.00', '0.00', 'Cash', '<p>Veuillez respecter les doses prescrites</p>', '<p>Rendez-vous dans un mois après début de traitement</p>', 2);


#
# TABLE STRUCTURE FOR: opd_patient_charges
#

DROP TABLE IF EXISTS `opd_patient_charges`;

CREATE TABLE `opd_patient_charges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `patient_id` int NOT NULL,
  `opd_id` int NOT NULL,
  `charge_id` int NOT NULL,
  `org_charge_id` int NOT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: opd_payment
#

DROP TABLE IF EXISTS `opd_payment`;

CREATE TABLE `opd_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `opd_id` int NOT NULL,
  `paid_amount` decimal(15,2) NOT NULL,
  `balance_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `document` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `opd_payment` (`id`, `patient_id`, `opd_id`, `paid_amount`, `balance_amount`, `total_amount`, `payment_mode`, `note`, `date`, `document`) VALUES (1, 1, 1, '3200.00', '-3200.00', '0.00', 'Cash', '', '2020-08-20', '');
INSERT INTO `opd_payment` (`id`, `patient_id`, `opd_id`, `paid_amount`, `balance_amount`, `total_amount`, `payment_mode`, `note`, `date`, `document`) VALUES (2, 3, 5, '16000.00', '-16000.00', '0.00', 'Cash', '', '2020-08-07', '');


#
# TABLE STRUCTURE FOR: operation_theatre
#

DROP TABLE IF EXISTS `operation_theatre`;

CREATE TABLE `operation_theatre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(200) NOT NULL,
  `patient_id` int NOT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `charge_id` varchar(11) DEFAULT NULL,
  `operation_name` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `operation_type` varchar(100) DEFAULT NULL,
  `consultant_doctor` varchar(100) DEFAULT NULL,
  `ass_consultant_1` varchar(50) DEFAULT NULL,
  `ass_consultant_2` varchar(50) DEFAULT NULL,
  `anesthetist` varchar(50) DEFAULT NULL,
  `anaethesia_type` varchar(50) DEFAULT NULL,
  `ot_technician` varchar(100) DEFAULT NULL,
  `ot_assistant` varchar(100) DEFAULT NULL,
  `result` varchar(50) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `height` varchar(200) NOT NULL,
  `weight` varchar(200) NOT NULL,
  `bp` varchar(200) NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: organisation
#

DROP TABLE IF EXISTS `organisation`;

CREATE TABLE `organisation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organisation_name` varchar(200) NOT NULL,
  `code` varchar(50) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `address` varchar(300) NOT NULL,
  `contact_person_name` varchar(200) NOT NULL,
  `contact_person_phone` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: organisations_charges
#

DROP TABLE IF EXISTS `organisations_charges`;

CREATE TABLE `organisations_charges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `charge_type` varchar(50) NOT NULL,
  `charge_id` int NOT NULL,
  `org_charge` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `charge_id` (`charge_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: ot_consultant_register
#

DROP TABLE IF EXISTS `ot_consultant_register`;

CREATE TABLE `ot_consultant_register` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `date` varchar(50) NOT NULL,
  `ins_date` date NOT NULL,
  `ins_time` time NOT NULL,
  `instruction` varchar(200) NOT NULL,
  `cons_doctor` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pathology
#

DROP TABLE IF EXISTS `pathology`;

CREATE TABLE `pathology` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `pathology_category_id` varchar(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `report_days` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `charge_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: pathology_category
#

DROP TABLE IF EXISTS `pathology_category`;

CREATE TABLE `pathology_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `category_name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pathology_category` (`id`, `category_name`) VALUES (1, 'Biochimie');


#
# TABLE STRUCTURE FOR: pathology_report
#

DROP TABLE IF EXISTS `pathology_report`;

CREATE TABLE `pathology_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(200) NOT NULL,
  `pathology_id` int NOT NULL,
  `patient_id` varchar(30) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `consultant_doctor` varchar(10) NOT NULL,
  `reporting_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `pathology_report` varchar(255) DEFAULT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: patient_charges
#

DROP TABLE IF EXISTS `patient_charges`;

CREATE TABLE `patient_charges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` varchar(50) DEFAULT NULL,
  `patient_id` int DEFAULT NULL,
  `ipd_id` int NOT NULL,
  `charge_id` int DEFAULT NULL,
  `org_charge_id` int DEFAULT NULL,
  `apply_charge` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: patient_timeline
#

DROP TABLE IF EXISTS `patient_timeline`;

CREATE TABLE `patient_timeline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(200) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `patient_timeline` (`id`, `patient_id`, `title`, `timeline_date`, `description`, `document`, `status`, `date`) VALUES (1, 2, 'Anémie', '2020-08-30', 'Présence d\'anémie macrocytaire', '', 'yes', '2020-08-30');
INSERT INTO `patient_timeline` (`id`, `patient_id`, `title`, `timeline_date`, `description`, `document`, `status`, `date`) VALUES (2, 2, 'Hallucinations', '2020-08-29', 'Le patient visionne des hallucinations la nuit (d\'après ces dires)', '', 'yes', '2020-08-30');
INSERT INTO `patient_timeline` (`id`, `patient_id`, `title`, `timeline_date`, `description`, `document`, `status`, `date`) VALUES (3, 3, 'Sortie du patient', '2020-08-31', '', '', 'yes', '2020-08-31');


#
# TABLE STRUCTURE FOR: patients
#

DROP TABLE IF EXISTS `patients`;

CREATE TABLE `patients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_unique_id` int NOT NULL,
  `admission_date` varchar(100) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `age` varchar(10) NOT NULL,
  `month` varchar(200) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mobileno` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `marital_status` varchar(100) NOT NULL,
  `blood_group` varchar(200) NOT NULL,
  `address` text NOT NULL,
  `guardian_name` varchar(100) DEFAULT NULL,
  `guardian_phone` varchar(100) DEFAULT NULL,
  `guardian_address` text,
  `guardian_email` varchar(100) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `discharged` varchar(100) NOT NULL,
  `patient_type` varchar(200) NOT NULL,
  `credit_limit` varchar(50) DEFAULT NULL,
  `organisation` varchar(100) NOT NULL,
  `known_allergies` varchar(200) NOT NULL,
  `old_patient` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `disable_at` date NOT NULL,
  `note` varchar(200) NOT NULL,
  `is_ipd` varchar(200) NOT NULL,
  `app_key` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `patients` (`id`, `patient_unique_id`, `admission_date`, `patient_name`, `age`, `month`, `image`, `mobileno`, `email`, `dob`, `gender`, `marital_status`, `blood_group`, `address`, `guardian_name`, `guardian_phone`, `guardian_address`, `guardian_email`, `is_active`, `discharged`, `patient_type`, `credit_limit`, `organisation`, `known_allergies`, `old_patient`, `created_at`, `disable_at`, `note`, `is_ipd`, `app_key`) VALUES (1, 1001, NULL, 'Mahmoud Khaled', '32', '0', 'uploads/patient_images/no_image.png', '023652326', 'iayoub@yandex.com', '1988-08-16', 'Male', 'Marié', 'AB+', '24534, Neumünster Hamburg', 'Maman', NULL, NULL, '', 'yes', 'yes', '', NULL, '', '', 'Non', '2020-08-31 12:41:28', '0000-00-00', '', 'yes', '');
INSERT INTO `patients` (`id`, `patient_unique_id`, `admission_date`, `patient_name`, `age`, `month`, `image`, `mobileno`, `email`, `dob`, `gender`, `marital_status`, `blood_group`, `address`, `guardian_name`, `guardian_phone`, `guardian_address`, `guardian_email`, `is_active`, `discharged`, `patient_type`, `credit_limit`, `organisation`, `known_allergies`, `old_patient`, `created_at`, `disable_at`, `note`, `is_ipd`, `app_key`) VALUES (2, 1002, NULL, 'Patrick Lavoisine', '0', '0', 'uploads/patient_images/no_image.png', '059652356', '', '2020-08-13', 'Male', 'Célibataire', 'A+', '', '', NULL, NULL, '', 'yes', 'yes', '', NULL, '', 'Allergie aux arachides', '', '2020-08-31 12:42:28', '0000-00-00', '', 'yes', '');
INSERT INTO `patients` (`id`, `patient_unique_id`, `admission_date`, `patient_name`, `age`, `month`, `image`, `mobileno`, `email`, `dob`, `gender`, `marital_status`, `blood_group`, `address`, `guardian_name`, `guardian_phone`, `guardian_address`, `guardian_email`, `is_active`, `discharged`, `patient_type`, `credit_limit`, `organisation`, `known_allergies`, `old_patient`, `created_at`, `disable_at`, `note`, `is_ipd`, `app_key`) VALUES (3, 1003, NULL, 'Maria Danver', '31', '6', 'uploads/patient_images/no_image.png', '045987545', 'maria.d@gmail.com', '1989-02-10', 'Female', 'Non spécifié', 'AB+', '', 'Patrick Lorange', NULL, NULL, '', 'yes', 'no', '', NULL, '', '', 'Non', '2020-08-31 12:35:23', '0000-00-00', '', '', '');


#
# TABLE STRUCTURE FOR: payment
#

DROP TABLE IF EXISTS `payment`;

CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `ipd_id` int NOT NULL,
  `paid_amount` decimal(15,2) NOT NULL,
  `balance_amount` decimal(15,2) NOT NULL,
  `total_amount` decimal(15,2) NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `note` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `document` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: payment_settings
#

DROP TABLE IF EXISTS `payment_settings`;

CREATE TABLE `payment_settings` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(200) NOT NULL,
  `api_username` varchar(200) DEFAULT NULL,
  `api_secret_key` varchar(200) NOT NULL,
  `salt` varchar(200) NOT NULL,
  `api_publishable_key` varchar(200) NOT NULL,
  `api_password` varchar(200) DEFAULT NULL,
  `api_signature` varchar(200) DEFAULT NULL,
  `api_email` varchar(200) DEFAULT NULL,
  `paypal_demo` varchar(100) NOT NULL,
  `account_no` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: payslip_allowance
#

DROP TABLE IF EXISTS `payslip_allowance`;

CREATE TABLE `payslip_allowance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `payslip_id` int NOT NULL,
  `allowance_type` varchar(200) NOT NULL,
  `amount` int NOT NULL,
  `staff_id` int NOT NULL,
  `cal_type` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: permission_category
#

DROP TABLE IF EXISTS `permission_category`;

CREATE TABLE `permission_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `perm_group_id` int DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) DEFAULT NULL,
  `enable_view` int DEFAULT '0',
  `enable_add` int DEFAULT '0',
  `enable_edit` int DEFAULT '0',
  `enable_delete` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8;

INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (9, 3, 'Income', 'income', 1, 1, 1, 1, '2018-06-22 15:53:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (10, 3, 'Income Head', 'income_head', 1, 1, 1, 1, '2018-06-22 15:52:44');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (12, 4, 'Expense', 'expense', 1, 1, 1, 1, '2018-06-22 15:54:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (13, 4, 'Expense Head', 'expense_head', 1, 1, 1, 1, '2018-06-22 15:53:47');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (14, 4, 'Search Expense', 'search_expense', 1, 0, 0, 0, '2018-06-22 15:54:13');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (27, 8, 'Upload Content', 'upload_content', 1, 1, 0, 1, '2018-06-22 16:03:19');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (31, 10, 'Issue Item', 'issue_item', 1, 1, 0, 1, '2018-12-17 15:25:14');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (32, 10, 'Item Stock', 'item_stock', 1, 1, 1, 1, '2018-06-22 16:05:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (33, 10, 'Item', 'item', 1, 1, 1, 1, '2018-06-22 16:05:40');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (34, 10, 'Store', 'store', 1, 1, 1, 1, '2018-06-22 16:06:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (35, 10, 'Supplier', 'supplier', 1, 1, 1, 1, '2018-06-22 16:06:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (43, 13, 'Notice Board', 'notice_board', 1, 1, 1, 1, '2018-06-22 16:11:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (44, 13, 'Email / SMS', 'email_sms', 1, 0, 0, 0, '2018-06-22 16:10:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (46, 13, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-06-22 16:11:23');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (48, 14, 'OPD Report', 'opd_report', 1, 0, 0, 0, '2018-12-18 14:29:18');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (53, 15, 'Languages', 'languages', 0, 1, 0, 0, '2018-06-22 16:13:18');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (54, 15, 'General Setting', 'general_setting', 1, 0, 1, 0, '2018-07-05 14:38:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (56, 15, 'Notification Setting', 'notification_setting', 1, 0, 1, 0, '2018-07-05 14:38:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (57, 15, 'SMS Setting', 'sms_setting', 1, 0, 1, 0, '2018-07-05 14:38:47');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (58, 15, 'Email Setting', 'email_setting', 1, 0, 1, 0, '2018-07-05 14:38:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (59, 15, 'Front CMS Setting', 'front_cms_setting', 1, 0, 1, 0, '2018-07-05 14:38:55');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (60, 15, 'Payment Methods', 'payment_methods', 1, 0, 1, 0, '2018-07-05 14:38:59');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (61, 16, 'Menus', 'menus', 1, 1, 0, 1, '2018-07-09 09:20:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (62, 16, 'Media Manager', 'media_manager', 1, 1, 0, 1, '2018-07-09 09:20:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (63, 16, 'Banner Images', 'banner_images', 1, 1, 0, 1, '2018-06-22 16:16:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (64, 16, 'Pages', 'pages', 1, 1, 1, 1, '2018-06-22 16:16:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (65, 16, 'Gallery', 'gallery', 1, 1, 1, 1, '2018-06-22 16:17:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (66, 16, 'Event', 'event', 1, 1, 1, 1, '2018-06-22 16:17:20');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (67, 16, 'News', 'notice', 1, 1, 1, 1, '2018-07-03 14:09:34');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (80, 17, 'Visitor Book', 'visitor_book', 1, 1, 1, 1, '2018-06-22 16:18:58');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (81, 17, 'Phone Call Log', 'phone_call_log', 1, 1, 1, 1, '2018-06-22 16:20:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (82, 17, 'Postal Dispatch', 'postal_dispatch', 1, 1, 1, 1, '2018-06-22 16:20:21');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (83, 17, 'Postal Receive', 'postal_receive', 1, 1, 1, 1, '2018-06-22 16:20:04');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (84, 17, 'Complain', 'complain', 1, 1, 1, 1, '2018-12-19 14:41:37');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (85, 17, 'Setup Front Office', 'setup_front_office', 1, 1, 1, 1, '2018-11-15 06:19:58');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (86, 18, 'Staff', 'staff', 1, 1, 1, 1, '2018-06-22 16:23:31');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (87, 18, 'Disable Staff', 'disable_staff', 1, 0, 0, 0, '2018-06-22 16:23:12');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (88, 18, 'Staff Attendance', 'staff_attendance', 1, 1, 1, 0, '2018-06-22 16:23:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (89, 18, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2018-06-22 16:22:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (90, 18, 'Staff Payroll', 'staff_payroll', 1, 1, 0, 1, '2018-06-22 16:22:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (91, 18, 'Payroll Report', 'payroll_report', 1, 0, 0, 0, '2018-06-22 16:22:34');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (102, 21, 'Calendar To Do List', 'calendar_to_do_list', 1, 1, 1, 1, '2018-06-22 16:24:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (104, 10, 'Item Category', 'item_category', 1, 1, 1, 1, '2018-06-22 16:04:33');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (108, 18, ' Approve Leave Request', 'approve_leave_request', 1, 1, 1, 1, '2018-07-02 15:47:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (109, 18, 'Apply Leave', 'apply_leave', 1, 1, 1, 1, '2018-06-26 09:23:32');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (110, 18, 'Leave Types ', 'leave_types', 1, 1, 1, 1, '2018-07-02 15:47:56');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (111, 18, 'Department', 'department', 1, 1, 1, 1, '2018-06-26 09:27:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (112, 18, 'Designation', 'designation', 1, 1, 1, 1, '2018-06-26 09:27:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (118, 22, 'Staff Role Count Widget', 'staff_role_count_widget', 1, 0, 0, 0, '2018-07-03 12:43:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (126, 15, 'User Status', 'user_status', 1, 0, 0, 0, '2018-07-03 14:12:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (127, 18, 'Can See Other Users Profile', 'can_see_other_users_profile', 1, 0, 0, 0, '2018-07-03 14:12:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (129, 18, 'Staff Timeline', 'staff_timeline', 0, 1, 0, 1, '2018-07-05 13:38:52');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (130, 15, 'Backup', 'backup', 1, 1, 0, 1, '2018-07-09 09:47:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (131, 15, 'Restore', 'restore', 1, 0, 0, 0, '2018-07-09 09:47:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (132, 23, 'OPD Patient', 'opd_patient', 1, 1, 1, 1, '2018-12-20 15:07:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (134, 23, 'Prescription', 'prescription', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (135, 23, 'Revisit', 'revisit', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (136, 23, 'OPD Diagnosis', 'opd diagnosis', 1, 1, 1, 1, '2018-10-11 12:16:59');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (137, 23, 'OPD Timeline', 'opd timeline', 1, 1, 1, 1, '2018-10-11 12:17:22');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (138, 24, 'IPD Patients', 'ipd_patient', 1, 1, 1, 1, '2018-10-11 12:44:55');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (139, 24, 'Discharged Patients', 'discharged patients', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (140, 24, 'Consultant Register', 'consultant register', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (141, 24, 'IPD Diagnosis', 'ipd diagnosis', 1, 1, 1, 1, '2018-10-11 12:19:18');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (142, 24, 'IPD Timeline', 'ipd timeline', 1, 1, 1, 1, '2018-10-11 12:19:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (143, 24, 'Charges', 'charges', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (144, 24, 'Payment', 'payment', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (145, 24, 'Bill', 'bill', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (146, 25, 'Medicine', 'medicine', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (147, 25, 'Add Medicine Stock', 'add_medicine_stock', 1, 1, 1, 1, '2018-12-21 16:19:20');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (148, 25, 'Pharmacy Bill', 'pharmacy bill', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (149, 26, 'Pathology Test', 'pathology test', 1, 1, 1, 1, '2018-12-22 14:16:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (150, 26, 'Add Patient & Test Report', 'add_patho_patient_test_report', 1, 1, 1, 1, '2019-10-18 12:35:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (152, 27, 'Radiology Test', 'radiology test', 1, 1, 1, 1, '2018-10-11 06:58:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (153, 27, 'Add Patient & Test Report', 'add_radio_patient_test_reprt', 1, 1, 1, 1, '2019-10-18 12:35:49');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (155, 22, 'IPD Income Widget', 'ipd_income_widget', 1, 0, 0, 0, '2018-12-20 14:38:05');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (156, 22, 'OPD Income Widget', 'opd_income_widget', 1, 0, 0, 0, '2018-12-20 14:38:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (157, 22, 'Pharmacy Income Widget', 'pharmacy_income_widget', 1, 0, 0, 0, '2018-12-20 14:38:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (158, 22, 'Pathology Income Widget', 'pathology_income_widget', 1, 0, 0, 0, '2018-12-20 14:38:37');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (159, 22, 'Radiology Income Widget', 'radiology_income_widget', 1, 0, 0, 0, '2018-12-20 14:38:49');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (160, 22, 'OT Income Widget', 'ot_income_widget', 1, 0, 0, 0, '2018-12-20 14:39:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (161, 22, 'Blood Bank Income Widget', 'blood_bank_income_widget', 1, 0, 0, 0, '2018-12-20 14:39:13');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (162, 22, 'Ambulance Income Widget', 'ambulance_income_widget', 1, 0, 0, 0, '2018-12-20 14:39:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (163, 28, 'OT Patient', 'ot_patient', 1, 1, 1, 1, '2018-10-27 09:05:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (164, 28, 'OT Consultant Instruction', 'ot_consultant_instruction', 1, 1, 1, 1, '2018-10-27 09:06:19');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (165, 29, 'Ambulance Call', 'ambulance_call', 1, 1, 1, 1, '2018-10-27 09:07:51');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (166, 29, 'Ambulance', 'ambulance', 1, 1, 1, 1, '2018-10-27 09:07:59');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (167, 30, 'Blood Bank Status', 'blood_bank_status', 1, 1, 1, 1, '2018-10-27 09:50:09');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (168, 30, 'Blood Issue', 'blood_issue', 1, 1, 1, 1, '2018-10-27 09:50:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (169, 30, 'Blood Donor', 'blood_donor', 1, 1, 1, 1, '2018-10-27 09:50:19');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (170, 25, 'Medicine Category', 'medicine_category', 1, 1, 1, 1, '2018-10-25 11:40:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (171, 27, 'Radiology Category', 'radiology category', 1, 1, 1, 1, '2018-12-22 14:33:20');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (173, 31, 'Organisation', 'organisation', 1, 1, 1, 1, '2018-10-25 11:40:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (174, 31, 'Charges', 'tpa_charges', 1, 1, 1, 1, '2018-12-22 15:36:57');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (175, 26, 'Pathology Category', 'pathology_category', 1, 1, 1, 1, '2018-10-25 11:40:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (176, 32, 'Charges', 'hospital_charges', 1, 1, 1, 1, '2018-12-22 15:38:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (178, 14, 'IPD Report', 'ipd_report', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (179, 14, 'Pharmacy Bill Report', 'pharmacy_bill_report', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (180, 14, 'Pathology Patient Report', 'pathology_patient_report', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (181, 14, 'Radiology Patient Report', 'radiology_patient_report', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (182, 14, 'OT Report', 'ot_report', 1, 0, 0, 0, '2019-03-08 12:26:54');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (183, 14, 'Blood Donor Report', 'blood_donor_report', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (184, 14, 'Payroll Month Report', 'payroll_month_report', 1, 0, 0, 0, '2019-03-08 12:27:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (185, 14, 'Payroll Report', 'payroll_report', 1, 0, 0, 0, '2019-03-08 12:27:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (186, 14, 'Staff Attendance Report', 'staff_attendance_report', 1, 0, 0, 0, '2019-03-08 12:33:28');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (187, 14, 'User Log', 'user_log', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (188, 14, 'Patient Login Credential', 'patient_login_credential', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (189, 14, 'Email / SMS Log', 'email_sms_log', 1, 0, 0, 0, '2018-12-12 15:39:24');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (190, 22, 'Yearly Income & Expense Chart', 'yearly_income_expense_chart', 1, 0, 0, 0, '2018-12-12 15:52:05');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (191, 22, 'Monthly Income & Expense Chart', 'monthly_income_expense_chart', 1, 0, 0, 0, '2018-12-12 15:55:14');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (192, 23, 'OPD Prescription Print Header Footer ', 'opd_prescription_print_header_footer', 1, 1, 1, 1, '2018-12-12 16:01:07');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (193, 24, 'Revert Generated Bill', 'revert_generated_bill', 1, 0, 0, 0, '2018-12-12 16:04:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (194, 24, 'Calculate Bill', 'calculate_bill', 1, 0, 0, 0, '2018-12-12 16:05:30');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (195, 24, 'Generate Bill & Discharge Patient', 'generate_bill_discharge_patient', 1, 0, 0, 0, '2018-12-21 14:56:00');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (196, 24, 'Bed', 'bed', 1, 1, 1, 1, '2018-12-12 16:16:01');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (197, 24, 'IPD Prescription Print Header Footer', 'ipd_prescription_print_header_footer', 1, 1, 1, 1, '2018-12-12 16:09:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (198, 24, 'Bed Status', 'bed_status', 1, 0, 0, 0, '2018-12-12 16:09:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (200, 25, 'Medicine Bad Stock', 'medicine_bad_stock', 1, 1, 0, 1, '2018-12-18 06:42:46');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (201, 25, 'Pharmacy Bill print Header Footer', 'pharmacy_bill_print_header_footer', 1, 1, 1, 1, '2018-12-12 16:36:47');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (202, 30, 'Donate Blood', 'donate_blood', 1, 1, 0, 1, '2018-12-12 16:47:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (203, 32, 'Charge Category', 'charge_category', 1, 1, 1, 1, '2018-12-12 16:49:38');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (204, 17, 'Appointment', 'appointment', 1, 1, 1, 1, '2018-12-18 17:22:53');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (205, 17, 'Appointment Approve', 'appointment_approve', 1, 0, 0, 0, '2018-12-18 17:25:58');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (206, 14, 'TPA Report', 'tpa_report', 1, 0, 0, 0, '2019-03-08 12:19:25');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (207, 14, 'Ambulance Report', 'ambulance_report', 1, 0, 0, 0, '2019-03-08 12:19:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (208, 14, 'Discharge Patient Report', 'discharge_patient_report', 1, 0, 0, 0, '2019-03-08 12:19:55');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (209, 14, 'Appointment Report', 'appointment_report', 1, 0, 0, 0, '2019-03-08 12:20:10');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (210, 14, 'Transaction Report', 'transaction_report', 1, 0, 0, 0, '2019-03-08 12:27:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (211, 14, 'Blood Issue Report', 'blood_issue_report', 1, 0, 0, 0, '2019-03-08 12:27:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (212, 14, 'Income Report', 'income_report', 1, 0, 0, 0, '2019-03-08 12:27:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (213, 14, 'Expense Report', 'expense_report', 1, 0, 0, 0, '2019-03-08 12:27:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (214, 34, 'Birth Record', 'birth_record', 1, 1, 1, 1, '2018-06-22 16:06:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (215, 34, 'Death Record', 'death_record', 1, 1, 1, 1, '2018-06-22 16:06:02');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (216, 17, 'Move Patient in OPD', 'move_patient_in_opd', 1, 0, 0, 0, '2019-09-23 10:14:41');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (217, 17, 'Move Patient in IPD', 'move_patient_in_ipd', 1, 0, 0, 0, '2018-12-18 17:25:58');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (218, 23, 'Move Patient in IPD', 'opd_move _patient_in_ipd', 1, 0, 0, 0, '2019-09-23 10:19:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (219, 23, 'Manual Prescription', 'manual_prescription', 1, 0, 0, 0, '2019-09-23 10:22:06');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (220, 24, 'Prescription ', 'ipd_prescription', 1, 1, 1, 1, '2019-09-24 06:29:27');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (221, 23, 'Charges', 'opd_charges', 1, 1, 1, 1, '2019-09-23 10:28:03');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (222, 23, 'Payment', 'opd_payment', 1, 1, 1, 1, '2019-09-24 06:14:29');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (223, 23, 'Bill', 'opd_bill', 1, 1, 1, 1, '2019-09-23 10:29:37');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (224, 25, 'Import Medicine', 'import_medicine', 1, 0, 0, 0, '2019-09-23 10:33:31');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (225, 25, 'Medicine Purchase', 'medicine_purchase', 1, 1, 1, 1, '2019-09-23 10:35:53');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (226, 25, 'Medicine Supplier', 'medicine_supplier', 1, 1, 1, 1, '2019-09-23 10:39:36');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (227, 25, 'Medicine Dosage', 'medicine_dosage', 1, 1, 1, 1, '2019-09-23 10:47:16');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (228, 32, 'Doctor OPD Charges', 'doctor_opd_charges', 1, 1, 1, 1, '2019-09-23 10:50:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (229, 18, 'Staff Import', 'staff_import', 1, 0, 0, 0, '2019-09-23 10:51:39');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (236, 36, 'Patient', 'patient', 1, 1, 1, 1, '2019-09-23 11:55:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (237, 36, 'Enabled/Disabled', 'enabled_disabled', 1, 0, 0, 0, '2019-09-23 11:55:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (238, 22, 'Notification Center', 'notification_center', 1, 0, 0, 0, '2019-09-24 09:18:33');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (239, 36, 'Import', 'patient_import', 1, 0, 0, 0, '2019-10-04 06:50:26');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (240, 34, 'Birth Print Header Footer', 'birth_print_header_footer', 1, 1, 1, 1, '2019-10-04 08:14:01');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (241, 34, 'Custom Fields', 'birth_death_customfields', 1, 1, 1, 1, '2019-10-04 06:53:55');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (242, 34, 'Death Print Header Footer', 'death_print_header_footer', 1, 1, 1, 1, '2019-10-04 08:13:56');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (243, 26, 'Print Header Footer', 'pathology_print_header_footer', 1, 1, 1, 1, '2019-10-04 07:06:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (244, 27, 'Print Header Footer', 'radiology_print_header_footer', 1, 1, 1, 1, '2019-10-04 07:10:01');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (245, 28, 'Print Header Footer', 'ot_print_header_footer', 1, 1, 1, 1, '2019-10-04 07:11:15');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (246, 30, 'Print Header Footer', 'bloodbank_print_header_footer', 1, 1, 1, 1, '2019-10-04 08:17:17');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (247, 29, 'Print Header Footer', 'ambulance_print_header_footer', 1, 1, 1, 1, '2019-10-04 07:15:03');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (248, 24, 'IPD Bill Print Header Footer', 'ipd_bill_print_header_footer', 1, 1, 1, 1, '2019-10-04 07:43:28');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (249, 18, 'Print Payslip Header Footer', 'print_payslip_header_footer', 1, 1, 1, 1, '2019-10-04 08:01:33');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (250, 14, 'Income Group Report', 'income_group_report\r\n', 1, 0, 0, 0, '2019-10-04 09:35:55');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (251, 14, 'Expense Group Report', 'expense_group_report', 1, 0, 0, 0, '2019-10-04 09:45:56');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (252, 3, 'Search Income', 'search_income', 1, 0, 0, 0, '2019-10-04 09:47:12');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (253, 14, 'Inventory Stock Report', 'inventory_stock_report', 1, 0, 0, 0, '2019-10-04 10:50:31');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (254, 14, 'Inventory Item Report', 'add_item_report', 1, 0, 0, 0, '2019-10-04 10:53:22');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (255, 14, 'Inventory Issue Report', 'issue_inventory_report', 1, 0, 0, 0, '2019-10-04 10:54:40');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (256, 14, 'Expiry Medicine Report', 'expiry_medicine_report', 1, 0, 0, 0, '2019-10-04 11:30:11');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (257, 26, 'Pathology Bill', 'pathology bill', 1, 1, 1, 1, '2018-12-22 14:16:42');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (258, 14, 'Birth Report', 'birth_report', 1, 0, 0, 0, '2019-10-14 08:42:35');
INSERT INTO `permission_category` (`id`, `perm_group_id`, `name`, `short_code`, `enable_view`, `enable_add`, `enable_edit`, `enable_delete`, `created_at`) VALUES (259, 14, 'Death Report', 'death_report', 1, 0, 0, 0, '2019-10-14 08:43:56');


#
# TABLE STRUCTURE FOR: permission_group
#

DROP TABLE IF EXISTS `permission_group`;

CREATE TABLE `permission_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `short_code` varchar(100) NOT NULL,
  `is_active` int DEFAULT '0',
  `system` int NOT NULL,
  `sort_order` decimal(10,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (3, 'Income', 'income', 1, 0, '9.00', '2018-12-23 16:26:51');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (4, 'Expense', 'expense', 1, 0, '10.00', '2018-12-18 10:20:47');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (8, 'Download Center', 'download_center', 1, 0, '15.00', '2018-12-18 10:23:12');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (10, 'Inventory', 'inventory', 1, 0, '16.00', '2018-12-18 10:23:27');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (13, 'Messaging', 'communicate', 1, 0, '14.00', '2018-12-18 10:22:54');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (14, 'Reports', 'reports', 1, 1, '19.00', '2018-12-18 10:24:41');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (15, 'System Settings', 'system_settings', 1, 1, '18.00', '2018-12-18 10:24:23');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (16, 'Front CMS', 'front_cms', 1, 0, '17.00', '2018-12-18 10:23:47');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (17, 'Front Office', 'front_office', 1, 0, '12.00', '2018-12-18 10:21:58');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (18, 'Human Resource', 'human_resource', 1, 1, '13.00', '2018-12-18 10:22:37');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (21, 'Calendar To Do List', 'calendar_to_do_list', 1, 0, '22.00', '2019-10-04 07:26:23');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (22, 'Dashboard and Widgets', 'dashboard_and_widgets', 1, 1, '20.00', '2018-12-18 10:24:51');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (23, 'OPD', 'OPD', 1, 0, '1.00', '2019-11-01 12:36:37');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (24, 'IPD', 'IPD', 1, 0, '2.00', '2019-10-30 13:05:10');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (25, 'Pharmacy', 'pharmacy', 1, 0, '3.00', '2018-12-18 10:02:51');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (26, 'Pathology', 'pathology', 1, 0, '4.00', '2018-12-18 10:02:56');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (27, 'Radiology', 'radiology', 1, 0, '5.00', '2018-12-18 10:03:00');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (28, 'Operation Theatre', 'operation_theatre', 1, 0, '6.00', '2018-12-18 10:03:05');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (29, 'Ambulance', 'ambulance', 1, 0, '11.00', '2018-12-18 10:20:57');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (30, 'Blood Bank', 'blood_bank', 1, 0, '7.00', '2018-12-18 10:19:14');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (31, 'TPA Management', 'tpa_management', 1, 0, '8.00', '2018-12-18 10:19:39');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (32, 'Hospital Charges', 'hospital_charges', 1, 1, '10.10', '2019-03-10 07:08:22');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (34, 'Birth Death Record', 'birth_death_report', 1, 0, '12.00', '2019-10-04 07:18:39');
INSERT INTO `permission_group` (`id`, `name`, `short_code`, `is_active`, `system`, `sort_order`, `created_at`) VALUES (36, 'Patient', 'patient', 1, 0, '21.00', '2019-10-04 07:26:19');


#
# TABLE STRUCTURE FOR: pharmacy
#

DROP TABLE IF EXISTS `pharmacy`;

CREATE TABLE `pharmacy` (
  `id` int NOT NULL AUTO_INCREMENT,
  `medicine_name` varchar(200) DEFAULT NULL,
  `medicine_category_id` varchar(50) NOT NULL,
  `medicine_image` varchar(200) NOT NULL,
  `medicine_company` varchar(100) DEFAULT NULL,
  `medicine_composition` varchar(100) DEFAULT NULL,
  `medicine_group` varchar(100) DEFAULT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `min_level` varchar(50) DEFAULT NULL,
  `reorder_level` varchar(50) DEFAULT NULL,
  `vat` varchar(50) DEFAULT NULL,
  `unit_packing` varchar(50) DEFAULT NULL,
  `supplier` varchar(50) DEFAULT NULL,
  `vat_ac` varchar(50) DEFAULT NULL,
  `note` varchar(200) NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES (1, 'Ibuprofène', '2', '', 'Sanofi', 'Ibuprophène 300 mg', 'AINS', 'comprimés', '20', '10', '0', '300 mg', NULL, '', '', '', '2020-09-15 14:24:47');
INSERT INTO `pharmacy` (`id`, `medicine_name`, `medicine_category_id`, `medicine_image`, `medicine_company`, `medicine_composition`, `medicine_group`, `unit`, `min_level`, `reorder_level`, `vat`, `unit_packing`, `supplier`, `vat_ac`, `note`, `is_active`, `created_at`) VALUES (2, 'Paracétamol', '1', '', 'Sanorfi', 'Paracétamol 1000 mg', 'Antalgiques', 'comprimés', '20', '40', '', '1000 mg', NULL, '', '', '', '2020-09-15 14:26:02');


#
# TABLE STRUCTURE FOR: pharmacy_bill_basic
#

DROP TABLE IF EXISTS `pharmacy_bill_basic`;

CREATE TABLE `pharmacy_bill_basic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(50) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `patient_id` varchar(200) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `doctor_name` varchar(50) DEFAULT NULL,
  `file` varchar(200) NOT NULL,
  `opd_ipd_no` varchar(50) DEFAULT NULL,
  `total` decimal(15,2) DEFAULT NULL,
  `discount` decimal(15,2) NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `net_amount` decimal(15,2) NOT NULL,
  `note` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pharmacy_bill_basic` (`id`, `bill_no`, `date`, `patient_id`, `customer_name`, `customer_type`, `doctor_name`, `file`, `opd_ipd_no`, `total`, `discount`, `tax`, `net_amount`, `note`, `created_at`, `generated_by`) VALUES (1, '1', '2020-09-15 16:14:00', '3', 'Maria Danver', NULL, 'Alain Deschamps', '', NULL, '280.00', '0.00', '0.00', '280.00', '', '2020-09-15 16:15:11', 1);


#
# TABLE STRUCTURE FOR: pharmacy_bill_detail
#

DROP TABLE IF EXISTS `pharmacy_bill_detail`;

CREATE TABLE `pharmacy_bill_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `pharmacy_bill_basic_id` varchar(50) NOT NULL,
  `medicine_category_id` int NOT NULL,
  `medicine_name` varchar(200) NOT NULL,
  `expire_date` varchar(100) NOT NULL,
  `batch_no` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `sale_price` decimal(15,2) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `pharmacy_bill_detail` (`id`, `pharmacy_bill_basic_id`, `medicine_category_id`, `medicine_name`, `expire_date`, `batch_no`, `quantity`, `sale_price`, `amount`) VALUES (1, '1', 1, '2', 'Mar/2021', 'L0005', '2', '140.00', '280.00');


#
# TABLE STRUCTURE FOR: prescription
#

DROP TABLE IF EXISTS `prescription`;

CREATE TABLE `prescription` (
  `id` int NOT NULL AUTO_INCREMENT,
  `opd_id` int NOT NULL,
  `visit_id` int NOT NULL,
  `medicine_category_id` int NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `dosage` varchar(200) NOT NULL,
  `instruction` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `prescription` (`id`, `opd_id`, `visit_id`, `medicine_category_id`, `medicine`, `dosage`, `instruction`) VALUES (1, 5, 0, 1, 'Paracétamol', '25 mg', 'Après les repas 2/j');
INSERT INTO `prescription` (`id`, `opd_id`, `visit_id`, `medicine_category_id`, `medicine`, `dosage`, `instruction`) VALUES (2, 5, 0, 2, 'Ibuprofène', '', 'Avant coucher');


#
# TABLE STRUCTURE FOR: print_setting
#

DROP TABLE IF EXISTS `print_setting`;

CREATE TABLE `print_setting` (
  `id` int NOT NULL AUTO_INCREMENT,
  `print_header` varchar(300) NOT NULL,
  `print_footer` varchar(200) NOT NULL,
  `setting_for` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (3, 'uploads/printing/3.png', '', 'opd', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (4, 'uploads/printing/4.png', '', 'ipd', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (5, 'uploads/printing/5.png', '', 'pharmacy', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (6, 'uploads/printing/6.png', '', 'birth', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (7, 'uploads/printing/7.png', '', 'death', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (8, 'uploads/printing/8.png', '', 'pathology', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (9, 'uploads/printing/9.png', '', 'radiology', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (10, 'uploads/printing/10.png', '', 'ot', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (11, 'uploads/printing/11.png', '', 'bloodbank', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (12, 'uploads/printing/12.png', '', 'ambulance', 'yes');
INSERT INTO `print_setting` (`id`, `print_header`, `print_footer`, `setting_for`, `is_active`) VALUES (13, 'uploads/printing/13.png', '<p><b><i>Veuillez respecter les doses prescrites. Merci de votre visite.</i></b><br></p>', 'opdpre', 'yes');


#
# TABLE STRUCTURE FOR: radio
#

DROP TABLE IF EXISTS `radio`;

CREATE TABLE `radio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `test_name` varchar(100) DEFAULT NULL,
  `short_name` varchar(100) DEFAULT NULL,
  `test_type` varchar(100) DEFAULT NULL,
  `radiology_category_id` varchar(11) NOT NULL,
  `sub_category` varchar(50) NOT NULL,
  `report_days` varchar(50) NOT NULL,
  `charge_id` int NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: radiology_report
#

DROP TABLE IF EXISTS `radiology_report`;

CREATE TABLE `radiology_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bill_no` varchar(200) NOT NULL,
  `radiology_id` int NOT NULL,
  `patient_id` varchar(11) DEFAULT NULL,
  `customer_type` varchar(50) DEFAULT NULL,
  `patient_name` varchar(100) DEFAULT NULL,
  `consultant_doctor` varchar(10) NOT NULL,
  `reporting_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `radiology_report` varchar(255) DEFAULT NULL,
  `apply_charge` decimal(15,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: read_notification
#

DROP TABLE IF EXISTS `read_notification`;

CREATE TABLE `read_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `notification_id` int DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: read_systemnotification
#

DROP TABLE IF EXISTS `read_systemnotification`;

CREATE TABLE `read_systemnotification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `is_active` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (1, 2, 1, 'no', '2020-08-28 18:24:08');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (2, 5, 1, 'no', '2020-08-28 18:31:03');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (3, 5, 1, 'no', '2020-08-28 18:31:08');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (4, 8, 1, 'no', '2020-08-30 13:44:39');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (5, 3, 2, 'no', '2020-08-30 13:46:27');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (6, 11, 2, 'no', '2020-08-30 13:55:46');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (7, 10, 1, 'no', '2020-08-30 14:03:47');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (8, 14, 3, 'no', '2020-08-30 14:04:35');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (9, 17, 3, 'no', '2020-08-30 14:07:59');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (10, 13, 1, 'no', '2020-08-30 14:24:32');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (11, 16, 1, 'no', '2020-08-30 14:24:34');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (12, 28, 2, 'no', '2020-08-31 12:35:32');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (13, 27, 1, 'no', '2020-08-31 12:45:45');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (14, 27, 1, 'no', '2020-08-31 13:01:09');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (15, 24, 1, 'no', '2020-08-31 13:52:51');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (16, 19, 1, 'no', '2020-08-31 13:52:53');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (17, 27, 1, 'no', '2020-08-31 13:52:54');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (18, 2, 1, 'no', '2020-08-31 13:52:58');
INSERT INTO `read_systemnotification` (`id`, `notification_id`, `receiver_id`, `is_active`, `date`) VALUES (19, 27, 1, 'no', '2020-09-15 14:04:18');


#
# TABLE STRUCTURE FOR: roles
#

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(150) DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `is_system` int NOT NULL DEFAULT '0',
  `is_superadmin` int NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (1, 'Admin', NULL, 0, 1, 0, '2018-12-25 11:49:43');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (2, 'Accountant', NULL, 0, 1, 0, '2018-12-25 11:49:38');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (3, 'Doctor', NULL, 0, 1, 0, '2018-07-21 10:37:36');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (4, 'Pharmacist', NULL, 0, 1, 0, '2018-07-21 10:38:26');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (5, 'Pathologist', NULL, 0, 1, 0, '2018-12-25 11:49:59');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (6, 'Radiologist', NULL, 0, 1, 0, '2018-12-25 11:50:27');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (7, 'Super Admin', NULL, 0, 1, 1, '2018-12-25 11:52:24');
INSERT INTO `roles` (`id`, `name`, `slug`, `is_active`, `is_system`, `is_superadmin`, `created_at`) VALUES (8, 'Receptionist', NULL, 0, 1, 0, '2018-12-25 11:50:22');


#
# TABLE STRUCTURE FOR: roles_permissions
#

DROP TABLE IF EXISTS `roles_permissions`;

CREATE TABLE `roles_permissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `perm_cat_id` int DEFAULT NULL,
  `can_view` int DEFAULT NULL,
  `can_add` int DEFAULT NULL,
  `can_edit` int DEFAULT NULL,
  `can_delete` int DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=utf8;

INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (1, 1, 132, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (3, 1, 134, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (4, 1, 135, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (5, 1, 136, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (6, 1, 137, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (7, 1, 192, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (8, 1, 138, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (9, 1, 139, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (10, 1, 140, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (11, 1, 141, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (12, 1, 142, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (13, 1, 143, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (14, 1, 144, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (15, 1, 145, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (16, 1, 193, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (17, 1, 194, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (18, 1, 195, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (19, 1, 196, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (20, 1, 197, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (21, 1, 198, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (22, 1, 146, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (23, 1, 147, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (24, 1, 148, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (25, 1, 170, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (26, 1, 200, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (27, 1, 201, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (28, 1, 149, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (29, 1, 150, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (30, 1, 175, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (31, 1, 152, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (32, 1, 153, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (33, 1, 171, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (34, 1, 163, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (35, 1, 164, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (36, 1, 167, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (37, 1, 168, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (38, 1, 169, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (39, 1, 202, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (40, 1, 173, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (41, 1, 174, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (42, 1, 9, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (43, 1, 10, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (45, 1, 176, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (46, 1, 203, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (47, 1, 12, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (48, 1, 13, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (49, 1, 14, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (50, 1, 165, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (51, 1, 166, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (52, 1, 80, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (53, 1, 81, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (54, 1, 82, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (55, 1, 83, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (56, 1, 84, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (57, 1, 85, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (58, 1, 204, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (59, 1, 205, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (60, 1, 86, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (61, 1, 87, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (62, 1, 88, 1, 1, 1, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (63, 1, 89, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (64, 1, 90, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (65, 1, 91, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (66, 1, 108, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (67, 1, 109, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (68, 1, 110, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (69, 1, 111, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (70, 1, 112, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (71, 1, 127, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (72, 1, 129, 0, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (73, 1, 43, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (74, 1, 44, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (75, 1, 46, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (76, 1, 27, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (77, 1, 31, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (78, 1, 32, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (79, 1, 33, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (80, 1, 34, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (81, 1, 35, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (82, 1, 104, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (83, 1, 61, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (84, 1, 62, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (85, 1, 63, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (86, 1, 64, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (87, 1, 65, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (88, 1, 66, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (89, 1, 67, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (90, 1, 53, 0, 1, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (91, 1, 54, 1, 0, 1, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (92, 1, 56, 1, 0, 1, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (93, 1, 57, 1, 0, 1, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (94, 1, 58, 1, 0, 1, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (95, 1, 59, 1, 0, 1, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (96, 1, 60, 1, 0, 1, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (97, 1, 126, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (98, 1, 130, 1, 1, 0, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (99, 1, 131, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (100, 1, 48, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (101, 1, 178, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (102, 1, 179, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (103, 1, 180, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (104, 1, 181, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (105, 1, 182, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (106, 1, 183, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (107, 1, 184, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (108, 1, 185, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (109, 1, 186, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (110, 1, 187, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (111, 1, 188, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (112, 1, 189, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (113, 1, 206, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (114, 1, 207, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (115, 1, 208, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (116, 1, 209, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (117, 1, 210, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (118, 1, 211, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (119, 1, 212, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (120, 1, 213, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (121, 1, 118, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (122, 1, 155, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (123, 1, 156, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (124, 1, 157, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (125, 1, 158, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (126, 1, 159, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (127, 1, 160, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (128, 1, 161, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (129, 1, 162, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (130, 1, 190, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (131, 1, 191, 1, 0, 0, 0, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (132, 1, 102, 1, 1, 1, 1, '2019-03-09 17:26:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (133, 2, 132, 1, 1, 1, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (134, 2, 135, 1, 1, 1, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (135, 2, 138, 1, 1, 1, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (136, 2, 139, 1, 1, 1, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (137, 2, 143, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (138, 2, 144, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (139, 2, 145, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (140, 2, 193, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (141, 2, 194, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (142, 2, 195, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (143, 2, 196, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (144, 2, 198, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (145, 2, 148, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (146, 2, 149, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (147, 2, 150, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (148, 2, 152, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (149, 2, 153, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (150, 2, 163, 1, 1, 1, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (151, 2, 167, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (152, 2, 168, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (153, 2, 173, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (154, 2, 174, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (155, 2, 9, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (156, 2, 10, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (158, 2, 176, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (159, 2, 203, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (160, 2, 12, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (161, 2, 13, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (162, 2, 14, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (163, 2, 165, 1, 1, 1, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (164, 2, 166, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (165, 2, 204, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (166, 2, 205, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (167, 2, 86, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (168, 2, 87, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (169, 2, 88, 1, 1, 1, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (170, 2, 89, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (171, 2, 90, 1, 1, 0, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (172, 2, 91, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (173, 2, 108, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (174, 2, 109, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (175, 2, 110, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (176, 2, 111, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (177, 2, 112, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (178, 2, 127, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (179, 2, 129, 0, 1, 0, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (180, 2, 43, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (181, 2, 44, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (182, 2, 46, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (183, 2, 27, 1, 1, 0, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (184, 2, 31, 1, 1, 0, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (185, 2, 32, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (186, 2, 33, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (187, 2, 34, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (188, 2, 35, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (189, 2, 104, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (190, 2, 48, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (191, 2, 178, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (192, 2, 179, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (193, 2, 180, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (194, 2, 181, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (195, 2, 182, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (196, 2, 184, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (197, 2, 185, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (198, 2, 186, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (199, 2, 188, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (200, 2, 189, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (201, 2, 206, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (202, 2, 207, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (203, 2, 208, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (204, 2, 209, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (205, 2, 210, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (206, 2, 211, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (207, 2, 212, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (208, 2, 213, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (209, 2, 118, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (210, 2, 155, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (211, 2, 156, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (212, 2, 157, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (213, 2, 158, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (214, 2, 159, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (215, 2, 160, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (216, 2, 161, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (217, 2, 162, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (218, 2, 190, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (219, 2, 191, 1, 0, 0, 0, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (220, 2, 102, 1, 1, 1, 1, '2019-03-09 17:43:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (221, 3, 132, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (222, 3, 134, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (223, 3, 135, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (224, 3, 136, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (225, 3, 137, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (226, 3, 138, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (227, 3, 139, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (228, 3, 140, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (229, 3, 141, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (230, 3, 142, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (231, 3, 143, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (232, 3, 144, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (233, 3, 145, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (234, 3, 194, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (235, 3, 198, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (236, 3, 163, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (237, 3, 164, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (238, 3, 167, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (239, 3, 166, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (240, 3, 204, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (241, 3, 205, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (242, 3, 86, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (243, 3, 109, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (244, 3, 127, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (245, 3, 43, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (246, 3, 44, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (248, 3, 27, 1, 1, 0, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (249, 3, 48, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (250, 3, 178, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (251, 3, 182, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (253, 3, 208, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (254, 3, 209, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (255, 3, 118, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (256, 3, 155, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (257, 3, 156, 1, 0, 0, 0, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (262, 3, 102, 1, 1, 1, 1, '2019-03-10 07:17:01');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (263, 4, 146, 1, 1, 1, 1, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (264, 4, 147, 1, 1, 1, 1, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (265, 4, 148, 1, 1, 1, 1, '2019-10-12 11:04:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (266, 4, 170, 1, 1, 1, 1, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (267, 4, 200, 1, 1, 0, 1, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (268, 4, 86, 1, 0, 0, 0, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (269, 4, 43, 1, 1, 1, 1, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (270, 4, 44, 1, 0, 0, 0, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (272, 4, 27, 1, 1, 0, 1, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (273, 4, 179, 1, 0, 0, 0, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (274, 4, 118, 1, 0, 0, 0, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (275, 4, 157, 1, 0, 0, 0, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (276, 4, 102, 1, 1, 1, 1, '2019-03-10 07:21:00');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (277, 5, 149, 1, 1, 1, 1, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (278, 5, 150, 1, 1, 1, 1, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (279, 5, 175, 1, 1, 1, 1, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (280, 5, 86, 1, 0, 0, 0, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (281, 5, 109, 1, 1, 1, 1, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (282, 5, 43, 1, 1, 1, 1, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (283, 5, 44, 1, 0, 0, 0, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (285, 5, 27, 1, 1, 0, 1, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (286, 5, 180, 1, 0, 0, 0, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (288, 5, 158, 1, 0, 0, 0, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (289, 5, 102, 1, 1, 1, 1, '2019-03-10 07:23:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (290, 6, 152, 1, 1, 1, 1, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (291, 6, 153, 1, 1, 1, 1, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (292, 6, 171, 1, 1, 1, 1, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (293, 6, 86, 1, 0, 0, 0, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (294, 6, 109, 1, 1, 1, 1, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (295, 6, 181, 1, 0, 0, 0, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (297, 6, 118, 1, 0, 0, 0, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (298, 6, 159, 1, 0, 0, 0, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (299, 6, 102, 1, 1, 1, 1, '2019-03-10 07:31:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (300, 8, 132, 1, 1, 1, 1, '2019-03-10 07:38:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (306, 8, 81, 1, 1, 1, 1, '2019-03-10 07:38:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (324, 9, 214, 1, 1, 1, 1, '2019-09-24 05:57:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (325, 9, 215, 1, 1, 1, 1, '2019-09-24 05:57:58');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (326, 9, 132, 1, 1, 1, 1, '2019-09-24 08:09:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (327, 9, 218, 1, 0, 0, 0, '2019-09-24 05:59:54');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (338, 9, 135, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (339, 9, 219, 1, 0, 0, 0, '2019-09-24 06:10:21');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (340, 9, 221, 1, 1, 1, 1, '2019-09-24 06:12:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (341, 9, 222, 1, 1, 1, 1, '2019-09-24 06:15:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (342, 9, 223, 1, 1, 1, 1, '2019-09-24 06:20:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (343, 9, 220, 1, 1, 1, 1, '2019-09-24 06:36:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (344, 9, 138, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (345, 9, 146, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (346, 9, 147, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (347, 9, 148, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (348, 9, 170, 1, 1, 1, 1, '2019-09-24 07:33:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (349, 9, 200, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (350, 9, 201, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (351, 9, 224, 1, 0, 0, 0, '2019-09-24 06:37:17');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (352, 9, 225, 1, 1, 1, 1, '2019-09-24 06:52:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (353, 9, 226, 1, 1, 1, 1, '2019-09-24 07:32:07');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (354, 9, 227, 1, 1, 1, 1, '2019-09-24 07:32:07');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (355, 9, 54, 1, 0, 1, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (356, 9, 56, 1, 0, 1, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (357, 9, 57, 1, 0, 1, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (358, 9, 58, 1, 0, 1, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (359, 9, 59, 1, 0, 1, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (360, 9, 60, 1, 0, 1, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (361, 9, 126, 1, 0, 0, 0, '2019-09-24 07:10:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (362, 9, 130, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (363, 9, 131, 1, 0, 0, 0, '2019-09-24 07:10:42');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (364, 9, 174, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (367, 9, 14, 1, 0, 0, 0, '2019-09-24 07:56:25');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (375, 9, 236, 1, 1, 1, 1, '2019-09-24 08:42:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (376, 9, 237, 1, 0, 0, 0, '2019-09-24 08:42:37');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (377, 9, 134, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (378, 9, 136, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (379, 9, 137, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (380, 9, 192, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (381, 9, 139, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (382, 9, 140, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (383, 9, 141, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (384, 9, 142, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (385, 9, 143, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (386, 9, 144, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (387, 9, 145, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (388, 9, 193, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (389, 9, 194, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (390, 9, 195, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (391, 9, 196, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (392, 9, 197, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (393, 9, 198, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (394, 9, 149, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (395, 9, 150, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (396, 9, 175, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (397, 9, 152, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (398, 9, 153, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (399, 9, 171, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (400, 9, 163, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (401, 9, 164, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (402, 9, 167, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (403, 9, 168, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (404, 9, 169, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (405, 9, 202, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (406, 9, 173, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (407, 9, 9, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (408, 9, 10, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (409, 9, 12, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (410, 9, 13, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (411, 9, 176, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (412, 9, 203, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (413, 9, 228, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (414, 9, 165, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (415, 9, 166, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (416, 9, 80, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (417, 9, 81, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (418, 9, 82, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (419, 9, 83, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (420, 9, 84, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (421, 9, 85, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (422, 9, 204, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (423, 9, 205, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (424, 9, 216, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (425, 9, 217, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (426, 9, 86, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (427, 9, 87, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (428, 9, 88, 1, 1, 1, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (429, 9, 89, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (430, 9, 90, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (431, 9, 91, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (432, 9, 108, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (433, 9, 109, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (434, 9, 110, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (435, 9, 111, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (436, 9, 112, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (437, 9, 127, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (438, 9, 129, 0, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (439, 9, 229, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (440, 9, 43, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (441, 9, 44, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (442, 9, 46, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (443, 9, 27, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (444, 9, 31, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (445, 9, 32, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (446, 9, 33, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (447, 9, 34, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (448, 9, 35, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (449, 9, 104, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (450, 9, 61, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (451, 9, 62, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (452, 9, 63, 1, 1, 0, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (453, 9, 64, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (454, 9, 65, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (455, 9, 66, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (456, 9, 67, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (457, 9, 53, 0, 1, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (458, 9, 48, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (459, 9, 178, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (460, 9, 179, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (461, 9, 180, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (462, 9, 181, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (463, 9, 182, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (464, 9, 183, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (465, 9, 184, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (466, 9, 185, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (467, 9, 186, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (468, 9, 187, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (469, 9, 188, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (470, 9, 189, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (471, 9, 206, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (472, 9, 207, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (473, 9, 208, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (474, 9, 209, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (475, 9, 210, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (476, 9, 211, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (477, 9, 212, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (478, 9, 213, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (479, 9, 118, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (480, 9, 155, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (481, 9, 156, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (482, 9, 157, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (483, 9, 158, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (484, 9, 159, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (485, 9, 160, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (486, 9, 161, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (487, 9, 162, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (488, 9, 190, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (489, 9, 191, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (490, 9, 238, 1, 0, 0, 0, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (491, 9, 102, 1, 1, 1, 1, '2019-09-24 09:26:31');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (492, 8, 236, 1, 1, 1, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (493, 8, 146, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (495, 8, 138, 1, 1, 1, 1, '2019-10-04 06:35:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (496, 8, 139, 1, 1, 1, 1, '2019-10-04 06:35:49');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (500, 8, 143, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (501, 8, 144, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (502, 8, 145, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (504, 8, 194, 1, 0, 0, 0, '2019-10-04 06:36:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (506, 8, 196, 1, 0, 1, 1, '2019-10-12 13:16:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (508, 8, 198, 1, 0, 0, 0, '2019-10-04 06:36:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (511, 8, 148, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (516, 8, 225, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (524, 4, 201, 1, 1, 1, 1, '2019-10-04 07:51:19');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (525, 4, 197, 1, 1, 1, 1, '2019-10-04 07:52:12');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (526, 4, 243, 1, 0, 0, 0, '2019-10-04 09:11:46');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (527, 4, 244, 1, 0, 0, 0, '2019-10-04 09:12:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (528, 4, 245, 1, 0, 0, 0, '2019-10-04 07:57:23');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (530, 4, 249, 1, 1, 1, 1, '2019-10-04 08:02:34');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (531, 9, 246, 0, 1, 1, 1, '2019-10-04 08:07:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (533, 4, 247, 1, 0, 0, 0, '2019-10-04 08:08:38');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (536, 4, 240, 1, 0, 0, 0, '2019-10-04 08:10:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (537, 4, 242, 1, 1, 1, 1, '2019-10-04 10:10:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (540, 3, 245, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (541, 9, 243, 1, 0, 0, 0, '2019-10-04 09:17:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (542, 9, 243, 1, 0, 0, 0, '2019-10-04 09:17:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (543, 9, 239, 1, 0, 0, 0, '2019-10-04 09:18:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (544, 9, 239, 1, 0, 0, 0, '2019-10-04 09:18:14');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (545, 9, 242, 0, 1, 0, 0, '2019-10-04 09:41:27');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (546, 4, 214, 1, 0, 0, 0, '2019-10-04 09:50:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (547, 4, 241, 1, 1, 1, 1, '2019-10-04 10:01:24');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (548, 4, 215, 1, 0, 0, 0, '2019-10-04 09:51:09');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (550, 4, 236, 1, 0, 0, 0, '2019-10-04 10:15:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (571, 4, 256, 1, 0, 0, 0, '2019-10-04 11:36:02');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (572, 4, 224, 1, 0, 0, 0, '2019-10-12 11:12:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (573, 4, 225, 1, 1, 1, 1, '2019-10-12 12:09:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (574, 4, 226, 1, 1, 1, 1, '2019-10-12 12:09:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (575, 4, 227, 1, 1, 1, 1, '2019-10-12 12:09:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (577, 4, 203, 1, 0, 0, 0, '2019-10-12 11:22:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (578, 4, 176, 1, 0, 0, 0, '2019-10-12 11:25:06');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (579, 4, 228, 1, 0, 0, 0, '2019-10-12 11:34:35');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (580, 2, 221, 1, 1, 1, 1, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (581, 2, 222, 1, 1, 1, 1, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (582, 2, 223, 1, 1, 1, 1, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (583, 2, 225, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (584, 2, 216, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (585, 2, 217, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (586, 2, 229, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (587, 2, 249, 1, 1, 1, 1, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (588, 2, 250, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (589, 2, 251, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (590, 2, 253, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (591, 2, 254, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (592, 2, 255, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (593, 2, 256, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (594, 2, 238, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (595, 2, 236, 1, 1, 1, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (596, 2, 237, 1, 0, 0, 0, '2019-10-12 11:56:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (597, 3, 192, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (598, 3, 218, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (599, 3, 219, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (600, 3, 221, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (601, 3, 222, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (602, 3, 223, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (603, 3, 193, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (604, 3, 195, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (605, 3, 196, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (606, 3, 197, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (607, 3, 220, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (608, 3, 248, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (609, 3, 146, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (610, 3, 149, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (611, 3, 152, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (612, 3, 173, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (613, 3, 174, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (614, 3, 176, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (615, 3, 228, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (616, 3, 165, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (617, 3, 214, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (618, 3, 215, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (619, 3, 216, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (620, 3, 217, 1, 0, 0, 0, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (621, 3, 236, 1, 1, 1, 1, '2019-10-12 12:02:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (622, 4, 109, 1, 1, 1, 1, '2019-10-12 12:09:04');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (623, 5, 243, 1, 1, 1, 1, '2019-10-12 12:24:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (624, 5, 236, 1, 0, 0, 0, '2019-10-12 12:24:41');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (625, 6, 43, 1, 1, 1, 1, '2019-10-12 12:30:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (626, 6, 44, 1, 0, 0, 0, '2019-10-12 12:30:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (627, 6, 27, 1, 1, 0, 1, '2019-10-12 12:30:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (628, 6, 236, 1, 0, 0, 0, '2019-10-12 12:30:16');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (629, 8, 135, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (630, 8, 218, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (631, 8, 219, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (632, 8, 221, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (633, 8, 222, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (634, 8, 223, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (635, 8, 149, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (636, 8, 152, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (637, 8, 163, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (638, 8, 167, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (639, 8, 173, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (640, 8, 174, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (641, 8, 176, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (642, 8, 228, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (643, 8, 165, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (644, 8, 166, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (645, 8, 214, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (646, 8, 215, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (647, 8, 82, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (648, 8, 83, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (649, 8, 84, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (650, 8, 85, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (651, 8, 204, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (652, 8, 205, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (653, 8, 216, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (654, 8, 217, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (655, 8, 109, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (656, 8, 43, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (657, 8, 44, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (658, 8, 27, 1, 1, 0, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (659, 8, 31, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (660, 8, 32, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (661, 8, 33, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (662, 8, 48, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (663, 8, 178, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (664, 8, 180, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (665, 8, 181, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (666, 8, 186, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (667, 8, 207, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (668, 8, 208, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (669, 8, 209, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (670, 8, 253, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (671, 8, 254, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (672, 8, 255, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (673, 8, 118, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (674, 8, 238, 1, 0, 0, 0, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (675, 8, 102, 1, 1, 1, 1, '2019-10-12 12:40:43');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (676, 5, 176, 1, 0, 0, 0, '2019-10-12 13:10:30');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (677, 6, 176, 1, 0, 0, 0, '2019-10-12 13:12:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (678, 8, 86, 1, 0, 0, 0, '2019-10-12 13:16:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (679, 8, 182, 1, 0, 0, 0, '2019-10-12 13:16:52');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (680, 2, 147, 1, 0, 0, 0, '2019-10-14 09:34:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (681, 2, 200, 1, 0, 0, 0, '2019-10-14 09:34:51');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (682, 2, 164, 1, 0, 0, 0, '2019-10-14 09:36:36');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (683, 2, 146, 1, 0, 0, 0, '2019-10-14 09:39:47');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (684, 1, 218, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (685, 1, 219, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (686, 1, 221, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (687, 1, 222, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (688, 1, 223, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (689, 1, 220, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (690, 1, 248, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (691, 1, 224, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (692, 1, 225, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (693, 1, 226, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (694, 1, 227, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (695, 1, 243, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (696, 1, 257, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (697, 1, 244, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (698, 1, 245, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (699, 1, 246, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (700, 1, 252, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (701, 1, 228, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (702, 1, 247, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (703, 1, 214, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (704, 1, 215, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (705, 1, 240, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (706, 1, 241, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (707, 1, 242, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (708, 1, 216, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (709, 1, 217, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (710, 1, 229, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (711, 1, 249, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (712, 1, 250, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (713, 1, 251, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (714, 1, 253, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (715, 1, 254, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (716, 1, 255, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (717, 1, 256, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (718, 1, 258, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (719, 1, 259, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (720, 1, 238, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (721, 1, 236, 1, 1, 1, 1, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (722, 1, 237, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (723, 1, 239, 1, 0, 0, 0, '2019-10-15 06:18:33');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (724, 3, 226, 1, 0, 0, 0, '2019-10-18 10:33:53');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (725, 3, 150, 1, 0, 0, 0, '2019-10-19 04:38:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (726, 3, 153, 1, 0, 0, 0, '2019-10-19 04:38:20');
INSERT INTO `roles_permissions` (`id`, `role_id`, `perm_cat_id`, `can_view`, `can_add`, `can_edit`, `can_delete`, `created_at`) VALUES (727, 3, 238, 1, 0, 0, 0, '2019-11-01 05:40:24');


#
# TABLE STRUCTURE FOR: sch_settings
#

DROP TABLE IF EXISTS `sch_settings`;

CREATE TABLE `sch_settings` (
  `id` int NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  `lang_id` int DEFAULT NULL,
  `dise_code` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) NOT NULL,
  `time_format` varchar(20) DEFAULT '24-hour',
  `currency` varchar(50) NOT NULL,
  `currency_symbol` varchar(50) NOT NULL,
  `is_rtl` varchar(10) DEFAULT 'disabled',
  `timezone` varchar(30) DEFAULT 'UTC',
  `session_id` int DEFAULT NULL,
  `start_month` varchar(40) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `mini_logo` varchar(200) NOT NULL,
  `theme` varchar(200) NOT NULL DEFAULT 'default.jpg',
  `credit_limit` varchar(255) DEFAULT NULL,
  `opd_record_month` varchar(50) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cron_secret_key` varchar(100) NOT NULL,
  `fee_due_days` int DEFAULT '0',
  `doctor_restriction` varchar(100) NOT NULL,
  `superadmin_restriction` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `lang_id` (`lang_id`),
  KEY `session_id` (`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sch_settings` (`id`, `name`, `email`, `phone`, `address`, `lang_id`, `dise_code`, `date_format`, `time_format`, `currency`, `currency_symbol`, `is_rtl`, `timezone`, `session_id`, `start_month`, `image`, `mini_logo`, `theme`, `credit_limit`, `opd_record_month`, `is_active`, `created_at`, `cron_secret_key`, `fee_due_days`, `doctor_restriction`, `superadmin_restriction`) VALUES (0, 'Promed DELUXE', 'Your Hospital Email', 'Your Hospital Phone', 'Your Hospital Address', 81, 'Your Hospital Code', 'd-m-Y', '24-hour', 'DZD', 'DZD', 'disabled', 'UTC', NULL, '', '0.png', '0mini_logo.png', 'blue.jpg', '20000', '1', 'no', '2020-09-15 19:41:29', '4cJyobSNnqijEV0u9L9vVD7DN', 60, 'disabled', 'enabled');


#
# TABLE STRUCTURE FOR: send_notification
#

DROP TABLE IF EXISTS `send_notification`;

CREATE TABLE `send_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) DEFAULT NULL,
  `publish_date` date DEFAULT NULL,
  `date` date DEFAULT NULL,
  `message` text,
  `visible_student` varchar(10) NOT NULL DEFAULT 'no',
  `visible_staff` varchar(10) NOT NULL DEFAULT 'no',
  `visible_parent` varchar(10) NOT NULL DEFAULT 'no',
  `created_by` varchar(60) DEFAULT NULL,
  `created_id` int DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'no',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: sms_config
#

DROP TABLE IF EXISTS `sms_config`;

CREATE TABLE `sms_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `api_id` varchar(100) NOT NULL,
  `authkey` varchar(100) NOT NULL,
  `senderid` varchar(100) NOT NULL,
  `contact` text,
  `username` varchar(150) DEFAULT NULL,
  `url` varchar(150) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `is_active` varchar(255) DEFAULT 'disabled',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: source
#

DROP TABLE IF EXISTS `source`;

CREATE TABLE `source` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff
#

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(200) NOT NULL,
  `department` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `qualification` varchar(200) NOT NULL,
  `work_exp` varchar(200) NOT NULL,
  `specialization` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `surname` varchar(200) NOT NULL,
  `father_name` varchar(200) NOT NULL,
  `mother_name` varchar(200) NOT NULL,
  `contact_no` varchar(200) NOT NULL,
  `emergency_contact_no` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(100) NOT NULL,
  `date_of_joining` date NOT NULL,
  `date_of_leaving` date NOT NULL,
  `local_address` varchar(300) NOT NULL,
  `permanent_address` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL,
  `password` varchar(250) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `blood_group` varchar(100) NOT NULL,
  `account_title` varchar(200) NOT NULL,
  `bank_account_no` varchar(200) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `ifsc_code` varchar(200) NOT NULL,
  `bank_branch` varchar(100) NOT NULL,
  `payscale` varchar(200) NOT NULL,
  `basic_salary` varchar(200) NOT NULL,
  `epf_no` varchar(200) NOT NULL,
  `contract_type` varchar(100) NOT NULL,
  `shift` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `facebook` varchar(200) NOT NULL,
  `twitter` varchar(200) NOT NULL,
  `linkedin` varchar(200) NOT NULL,
  `instagram` varchar(200) NOT NULL,
  `resume` varchar(200) NOT NULL,
  `joining_letter` varchar(200) NOT NULL,
  `resignation_letter` varchar(200) NOT NULL,
  `other_document_name` varchar(200) NOT NULL,
  `other_document_file` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `is_active` int NOT NULL,
  `verification_code` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employee_id` (`employee_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (1, '', '', '', '', '', '', 'Super Admin', '', '', '', '', '', 'iayoub@yandex.com', '0000-00-00', '', '0000-00-00', '0000-00-00', '', '', '', '', '$2y$10$Sd1jLCqKoGzUv6DEqVhTs.K0fUTmQZzftpm2IHumCeaEL/Ts.0xbq', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, 'a01mcHBUZDBtNW9GMEIwbGxxbVdVQlNTTUxHTjRQZG9BQVozWjIwOTJBZz0=');
INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (2, '012456', '1', 'select', '', '3 ans', 'Biochimie', 'Alain', 'Deschamps', '', '', '', '', 'alaind@gmail.com', '1974-06-12', 'Marié', '0000-00-00', '0000-00-00', '', '', '', '2.jpg', '$2y$10$nHTt51I1oqmWV6gPE6l7Du2df2rVWUpYBniN9uKGzKhgDFyczqfsy', 'Male', 'A+', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '');
INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (3, '1260215', '2', 'select', '', '', '', 'Marie', 'Lagarde', '', '', '', '', 'marielagarde@gmail.com', '1985-07-11', 'Marié', '0000-00-00', '0000-00-00', '', '', '', '3.jpeg', '$2y$10$/LiThVADeyod0K8yFvVKAOk0InSlovCfhXHkrQq3MRw/SP8VXZH/C', 'Female', 'A-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '');
INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (4, '659014', '6', 'select', '', '', '', 'Micheal', 'Zola', '', '', '', '', 'michael.zola@gmail.com', '1988-11-17', 'Marié', '0000-00-00', '0000-00-00', '', '', '', '4.jpeg', '$2y$10$OMrANaRD9JLZYBfLSSVmFOojS2RY6nNuldaigzdKZqxnY7ky6Klmm', 'Male', 'AB+', '', '', '', '', '', '', '', '', 'permanent', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '');
INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (5, '320565', '3', 'select', '', '', '', 'Omar', 'Gamal', '', '', '+211 1254 125', '', 'omar.gamal@gmail.com', '1980-02-06', 'Célibataire', '1970-01-01', '0000-00-00', '', '', '', '5.jpeg', '$2y$10$xFkZOG.AvuA6eg8tALE02OdIk420vos7KE1wiBkjz6hD/gFa3/qCC', 'Male', 'O-', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '');
INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (6, '00124564', 'select', 'select', '', '3 ans', '', 'Lamia', 'Tamer', '', '', '+25 126 4595 23', '', 'lamia.tamer@yahoo.fr', '1994-06-15', 'Célibataire', '1970-01-01', '0000-00-00', '', '', '', '6.png', '$2y$10$x7nQsKh7Jy8IETZ68Bnb5.rV/Gy7FSvm5.uDQ2aTl0VHzPLgFdZ4O', 'Female', '', '', '', '', '', '', '', '', '', 'probation', '', '', '', '', '', '', '', '', '', 'Other Document', '', 0, 1, '');
INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (7, '5202125', 'select', 'select', '', '', '', 'Patrick', 'Lamarre', '', '', '+236 985 652 32', '+236 985 652 32', 'patrick.lamarre@outlook.com', '1974-06-08', 'Marié', '2020-08-05', '0000-00-00', '', '', '', '7.jpg', '$2y$10$6xuqPTxk9.omomlrazcRjODwBdDqwLLwcPEslvHEIL/qYnxnMpelS', 'Male', 'B+', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '');
INSERT INTO `staff` (`id`, `employee_id`, `department`, `designation`, `qualification`, `work_exp`, `specialization`, `name`, `surname`, `father_name`, `mother_name`, `contact_no`, `emergency_contact_no`, `email`, `dob`, `marital_status`, `date_of_joining`, `date_of_leaving`, `local_address`, `permanent_address`, `note`, `image`, `password`, `gender`, `blood_group`, `account_title`, `bank_account_no`, `bank_name`, `ifsc_code`, `bank_branch`, `payscale`, `basic_salary`, `epf_no`, `contract_type`, `shift`, `location`, `facebook`, `twitter`, `linkedin`, `instagram`, `resume`, `joining_letter`, `resignation_letter`, `other_document_name`, `other_document_file`, `user_id`, `is_active`, `verification_code`) VALUES (8, '6526646', 'select', 'select', '', '', '', 'Rafik', 'Noureddine', '', '', '+213 554 987 123', '+213 554 987 123', 'rafik.nour@gmail.com', '1964-07-14', 'Marié', '0000-00-00', '0000-00-00', '', '', '', '8.jpg', '$2y$10$aFrzW.5mG6S9u/jW9mgeeuiGfSf1/HNbZpZRoDh1U9jjDNzQlWEdC', 'Male', 'A+', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 0, 1, '');


#
# TABLE STRUCTURE FOR: staff_attendance
#

DROP TABLE IF EXISTS `staff_attendance`;

CREATE TABLE `staff_attendance` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `staff_id` int NOT NULL,
  `staff_attendance_type_id` int NOT NULL,
  `remark` varchar(200) NOT NULL,
  `is_active` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_attendance_type
#

DROP TABLE IF EXISTS `staff_attendance_type`;

CREATE TABLE `staff_attendance_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(200) NOT NULL,
  `key_value` varchar(200) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`) VALUES (1, 'Present', '<b class=\"text text-success\">P</b>', 'yes', '0000-00-00 00:00:00');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`) VALUES (2, 'Late', '<b class=\"text text-warning\">L</b>', 'yes', '0000-00-00 00:00:00');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`) VALUES (3, 'Absent', '<b class=\"text text-danger\">A</b>', 'yes', '0000-00-00 00:00:00');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`) VALUES (4, 'Half Day', '<b class=\"text text-warning\">F</b>', 'yes', '2018-05-07 01:56:16');
INSERT INTO `staff_attendance_type` (`id`, `type`, `key_value`, `is_active`, `created_at`) VALUES (5, 'Holiday', 'H', 'yes', '0000-00-00 00:00:00');


#
# TABLE STRUCTURE FOR: staff_designation
#

DROP TABLE IF EXISTS `staff_designation`;

CREATE TABLE `staff_designation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `designation` varchar(200) NOT NULL,
  `is_active` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_leave_details
#

DROP TABLE IF EXISTS `staff_leave_details`;

CREATE TABLE `staff_leave_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `alloted_leave` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_leave_request
#

DROP TABLE IF EXISTS `staff_leave_request`;

CREATE TABLE `staff_leave_request` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `leave_type_id` int NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `leave_days` int NOT NULL,
  `employee_remark` varchar(200) NOT NULL,
  `admin_remark` varchar(200) NOT NULL,
  `status` varchar(100) NOT NULL,
  `applied_by` varchar(200) NOT NULL,
  `document_file` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_payroll
#

DROP TABLE IF EXISTS `staff_payroll`;

CREATE TABLE `staff_payroll` (
  `id` int NOT NULL AUTO_INCREMENT,
  `basic_salary` int NOT NULL,
  `pay_scale` varchar(200) NOT NULL,
  `grade` varchar(50) NOT NULL,
  `is_active` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_payslip
#

DROP TABLE IF EXISTS `staff_payslip`;

CREATE TABLE `staff_payslip` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `basic` int NOT NULL,
  `total_allowance` int NOT NULL,
  `total_deduction` int NOT NULL,
  `leave_deduction` int NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `net_salary` decimal(15,2) NOT NULL,
  `status` varchar(100) NOT NULL,
  `month` varchar(200) NOT NULL,
  `year` varchar(200) NOT NULL,
  `payment_mode` varchar(200) NOT NULL,
  `payment_date` date NOT NULL,
  `remark` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: staff_roles
#

DROP TABLE IF EXISTS `staff_roles`;

CREATE TABLE `staff_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `role_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  `is_active` int DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `role_id` (`role_id`),
  KEY `staff_id` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (1, 7, 1, 0, '2020-08-15 16:01:58');
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (2, 3, 2, 0, '2020-08-18 18:50:02');
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (3, 3, 3, 0, '2020-08-18 18:51:26');
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (4, 4, 4, 0, '2020-08-18 19:07:46');
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (5, 3, 5, 0, '2020-08-18 19:09:21');
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (6, 8, 6, 0, '2020-08-18 19:14:13');
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (7, 2, 7, 0, '2020-08-18 19:15:42');
INSERT INTO `staff_roles` (`id`, `role_id`, `staff_id`, `is_active`, `created_at`) VALUES (8, 1, 8, 0, '2020-08-18 19:17:49');


#
# TABLE STRUCTURE FOR: staff_timeline
#

DROP TABLE IF EXISTS `staff_timeline`;

CREATE TABLE `staff_timeline` (
  `id` int NOT NULL AUTO_INCREMENT,
  `staff_id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `timeline_date` date NOT NULL,
  `description` varchar(300) NOT NULL,
  `document` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: supplier_bill_basic
#

DROP TABLE IF EXISTS `supplier_bill_basic`;

CREATE TABLE `supplier_bill_basic` (
  `id` int NOT NULL AUTO_INCREMENT,
  `purchase_no` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `supplier_id` int NOT NULL,
  `supplier_name` varchar(200) NOT NULL,
  `file` varchar(200) NOT NULL,
  `total` varchar(200) NOT NULL,
  `tax` varchar(200) NOT NULL,
  `discount` varchar(200) NOT NULL,
  `net_amount` varchar(200) NOT NULL,
  `note` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `supplier_bill_basic` (`id`, `purchase_no`, `date`, `supplier_id`, `supplier_name`, `file`, `total`, `tax`, `discount`, `net_amount`, `note`, `created_at`) VALUES (1, '1', '2020-09-15 14:26:00', 1, 'Carl Larfi', '', '3120000.00', '592800.00', '0.00', '3712800.00', '', '2020-09-15 14:28:29');


#
# TABLE STRUCTURE FOR: supplier_bill_detail
#

DROP TABLE IF EXISTS `supplier_bill_detail`;

CREATE TABLE `supplier_bill_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplier_bill_basic_id` varchar(200) NOT NULL,
  `medicine_category_id` varchar(200) NOT NULL,
  `medicine_name` varchar(200) NOT NULL,
  `expire_date` varchar(100) NOT NULL,
  `batch_no` varchar(200) NOT NULL,
  `quantity` varchar(100) NOT NULL,
  `purchase_price` varchar(200) NOT NULL,
  `mrp` varchar(200) NOT NULL,
  `sale_price` varchar(200) NOT NULL,
  `amount` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: supplier_category
#

DROP TABLE IF EXISTS `supplier_category`;

CREATE TABLE `supplier_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `supplier_category` varchar(200) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `supplier_person` varchar(200) NOT NULL,
  `supplier_person_contact` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `supplier_category` (`id`, `supplier_category`, `contact`, `supplier_person`, `supplier_person_contact`, `address`) VALUES (1, 'Saidal', '+2136568989', 'Carl Larfi', '', '');


#
# TABLE STRUCTURE FOR: system_notification
#

DROP TABLE IF EXISTS `system_notification`;

CREATE TABLE `system_notification` (
  `id` int NOT NULL AUTO_INCREMENT,
  `notification_title` varchar(200) NOT NULL,
  `notification_type` varchar(200) NOT NULL,
  `notification_desc` varchar(200) NOT NULL,
  `notification_for` varchar(200) NOT NULL,
  `receiver_id` int NOT NULL,
  `date` datetime NOT NULL,
  `is_active` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (1, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://127.0.0.1/patient/dashboard/ipdprofile\'>IPDN1</a>', 'Patient', 1, '2020-08-28 18:23:13', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (2, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveipdnotification/1/1\'>IPDN1</a>', 'Super Admin', 0, '2020-08-28 18:23:13', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (3, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveipdnotification/1/1\'>IPDN1</a>', 'Doctor', 2, '2020-08-28 18:23:13', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (4, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/patient/dashboard/profile\'>OPDN1</a>', 'Patient', 1, '2020-08-28 18:30:55', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (5, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/1/1\'>OPDN1</a>', 'Super Admin', 0, '2020-08-28 18:30:55', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (6, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/1/1\'>OPDN1</a>', 'Doctor', 5, '2020-08-28 18:30:55', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (7, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'http://127.0.0.1/patient/dashboard/appointment\'>Patrick Lavoisine</a>', 'Patient', 0, '2020-08-30 13:42:48', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (8, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'http://127.0.0.1/admin/systemnotification/moveappointment/1\'>Patrick Lavoisine</a>', 'Super Admin', 0, '2020-08-30 13:42:48', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (9, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://127.0.0.1/patient/dashboard/ipdprofile\'>IPDN2</a>', 'Patient', 2, '2020-08-30 13:50:22', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (10, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveipdnotification/2/2\'>IPDN2</a>', 'Super Admin', 0, '2020-08-30 13:50:22', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (11, 'IPD Visit Created', 'ipd', 'IPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveipdnotification/2/2\'>IPDN2</a>', 'Doctor', 2, '2020-08-30 13:50:22', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (12, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/patient/dashboard/profile\'>OPDN2</a>', 'Patient', 1, '2020-08-30 14:04:12', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (13, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/1/2\'>OPDN2</a>', 'Super Admin', 0, '2020-08-30 14:04:12', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (14, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/1/2\'>OPDN2</a>', 'Doctor', 3, '2020-08-30 14:04:12', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (15, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/patient/dashboard/profile\'>OPDN3</a>', 'Patient', 2, '2020-08-30 14:07:48', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (16, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/2/3\'>OPDN3</a>', 'Super Admin', 0, '2020-08-30 14:07:48', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (17, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/2/3\'>OPDN3</a>', 'Doctor', 3, '2020-08-30 14:07:48', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (18, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'http://127.0.0.1/patient/dashboard/appointment\'>Maria Danver</a>', 'Patient', 0, '2020-08-31 12:26:39', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (19, 'Appointment Created', 'appointment', 'Appointment has been created for <a href=\'http://127.0.0.1/admin/systemnotification/moveappointment/2\'>Maria Danver</a>', 'Super Admin', 0, '2020-08-31 12:26:39', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (20, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://127.0.0.1/patient/dashboard/appointment\'>Maria Danver</a>', 'Patient', 0, '2020-08-31 12:26:52', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (21, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://127.0.0.1/admin/systemnotification/moveappointment/2\'>Maria Danver</a>', 'Super Admin', 0, '2020-08-31 12:26:52', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (22, 'Appointment Approved', 'appointment', 'Appointment has been approved for <a href=\'http://127.0.0.1/admin/systemnotification/moveappointment/2\'>Maria Danver</a>', 'Doctor', 5, '2020-08-31 12:26:52', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (23, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/patient/dashboard/profile\'>OPDN4</a>', 'Patient', 3, '2020-08-31 12:29:05', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (24, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/3/4\'>OPDN4</a>', 'Super Admin', 0, '2020-08-31 12:29:05', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (25, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/3/4\'>OPDN4</a>', 'Doctor', 5, '2020-08-31 12:29:05', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (26, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/patient/dashboard/profile\'>OPDN5</a>', 'Patient', 3, '2020-08-31 12:35:23', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (27, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/3/5\'>OPDN5</a>', 'Super Admin', 0, '2020-08-31 12:35:23', 'yes');
INSERT INTO `system_notification` (`id`, `notification_title`, `notification_type`, `notification_desc`, `notification_for`, `receiver_id`, `date`, `is_active`) VALUES (28, 'OPD Visit Created', 'opd', 'OPD has been created with <a href=\'http://127.0.0.1/admin/systemnotification/moveopdnotification/3/5\'>OPDN5</a>', 'Doctor', 2, '2020-08-31 12:35:23', 'yes');


#
# TABLE STRUCTURE FOR: test_type_report
#

DROP TABLE IF EXISTS `test_type_report`;

CREATE TABLE `test_type_report` (
  `id` int NOT NULL AUTO_INCREMENT,
  `radiology_id` int NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `test_name` varchar(100) DEFAULT NULL,
  `reporting_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `test_report` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tpa_doctorcharges
#

DROP TABLE IF EXISTS `tpa_doctorcharges`;

CREATE TABLE `tpa_doctorcharges` (
  `id` int NOT NULL AUTO_INCREMENT,
  `org_id` int NOT NULL,
  `charge_id` int NOT NULL,
  `org_charge` varchar(50) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `org_id` (`org_id`) USING BTREE,
  KEY `charge_id` (`charge_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: tpa_master
#

DROP TABLE IF EXISTS `tpa_master`;

CREATE TABLE `tpa_master` (
  `id` int NOT NULL AUTO_INCREMENT,
  `organisation` varchar(200) NOT NULL,
  `charge_id` int NOT NULL,
  `organisation_charge` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: userlog
#

DROP TABLE IF EXISTS `userlog`;

CREATE TABLE `userlog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user` varchar(100) DEFAULT NULL,
  `role` varchar(100) DEFAULT NULL,
  `ipaddress` varchar(100) DEFAULT NULL,
  `user_agent` varchar(500) DEFAULT NULL,
  `login_datetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (1, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 16:02:59');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (2, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 16:39:12');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (3, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 16:42:21');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (4, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 16:44:22');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (5, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 16:53:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (6, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 16:56:06');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (7, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 17:22:37');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (8, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 18:10:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (9, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 18:23:12');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (10, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 18:23:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (11, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 18:38:39');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (12, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 18:47:24');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (13, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 18:48:20');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (14, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 18:48:44');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (15, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 19:22:17');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (16, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 19:33:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (17, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-15 19:38:02');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (18, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-17 10:03:10');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (19, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-17 10:03:41');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (20, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-17 10:35:24');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (21, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-17 10:56:56');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (22, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-17 11:14:02');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (23, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-18 18:33:49');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (24, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-23 18:00:33');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (25, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-24 10:46:18');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (26, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-28 17:29:43');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (27, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 13:36:00');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (28, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 13:37:46');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (29, 'lamia.tamer@yahoo.fr', 'Receptionist', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 13:39:03');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (30, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 13:44:31');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (31, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 13:45:36');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (32, 'alaind@gmail.com', 'Doctor', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 13:46:08');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (33, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 13:56:57');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (34, 'lamia.tamer@yahoo.fr', 'Receptionist', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:00:09');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (35, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:02:23');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (36, 'marielagarde@gmail.com', 'Doctor', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:02:55');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (37, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:03:38');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (38, 'marielagarde@gmail.com', 'Doctor', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:04:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (39, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:06:11');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (40, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:06:30');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (41, 'marielagarde@gmail.com', 'Doctor', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:06:51');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (42, 'alaind@gmail.com', 'Doctor', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:08:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (43, 'marielagarde@gmail.com', 'Doctor', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:11:28');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (44, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-30 14:24:24');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (45, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-31 09:39:27');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (46, 'lamia.tamer@yahoo.fr', 'Receptionist', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-31 10:04:46');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (47, 'lamia.tamer@yahoo.fr', 'Receptionist', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-31 12:10:29');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (48, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-31 12:11:23');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (49, 'alaind@gmail.com', 'Doctor', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-31 12:34:44');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (50, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-08-31 13:25:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (51, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-03 12:09:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (52, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-03 15:13:35');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (53, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-13 12:43:36');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (54, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-13 18:01:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (55, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-13 19:10:12');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (56, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-14 11:02:21');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (57, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-14 18:04:13');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (58, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-15 10:18:32');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (59, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-15 11:00:40');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (60, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-15 13:30:41');
INSERT INTO `userlog` (`id`, `user`, `role`, `ipaddress`, `user_agent`, `login_datetime`) VALUES (61, 'iayoub@yandex.com', 'Super Admin', '172.23.0.1', 'Chrome 83.0.4103.106, Linux', '2020-09-15 19:32:54');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `childs` text NOT NULL,
  `role` varchar(30) NOT NULL,
  `verification_code` varchar(200) NOT NULL,
  `is_active` varchar(255) DEFAULT 'yes',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`) VALUES (1, 1, 'pat1', 'fcbp9d', '', 'patient', '', 'yes', '2020-08-17 11:04:54');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`) VALUES (2, 2, 'pat2', '357w0w', '', 'patient', '', 'yes', '2020-08-30 13:48:30');
INSERT INTO `users` (`id`, `user_id`, `username`, `password`, `childs`, `role`, `verification_code`, `is_active`, `created_at`) VALUES (3, 3, 'pat3', '88ouvk', '', 'patient', '', 'yes', '2020-08-31 12:28:25');


#
# TABLE STRUCTURE FOR: vehicles
#

DROP TABLE IF EXISTS `vehicles`;

CREATE TABLE `vehicles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `vehicle_no` varchar(20) DEFAULT NULL,
  `vehicle_model` varchar(100) NOT NULL DEFAULT 'None',
  `manufacture_year` varchar(4) DEFAULT NULL,
  `vehicle_type` varchar(100) NOT NULL,
  `driver_name` varchar(50) DEFAULT NULL,
  `driver_licence` varchar(50) NOT NULL DEFAULT 'None',
  `driver_contact` varchar(20) DEFAULT NULL,
  `note` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

INSERT INTO `vehicles` (`id`, `vehicle_no`, `vehicle_model`, `manufacture_year`, `vehicle_type`, `driver_name`, `driver_licence`, `driver_contact`, `note`, `created_at`) VALUES (1, 'H100', 'Hyundai H100', '2019', 'Possédé', 'Carl Desenfants', '125df65C', '01254956', '', '2020-08-31 13:16:55');


#
# TABLE STRUCTURE FOR: visit_details
#

DROP TABLE IF EXISTS `visit_details`;

CREATE TABLE `visit_details` (
  `id` int NOT NULL AUTO_INCREMENT,
  `patient_id` int NOT NULL,
  `opd_id` int NOT NULL,
  `opd_no` varchar(100) NOT NULL,
  `cons_doctor` int NOT NULL,
  `case_type` varchar(200) NOT NULL,
  `appointment_date` datetime NOT NULL,
  `symptoms` varchar(200) NOT NULL,
  `bp` varchar(100) NOT NULL,
  `height` varchar(100) NOT NULL,
  `weight` varchar(100) NOT NULL,
  `known_allergies` varchar(100) NOT NULL,
  `casualty` varchar(200) NOT NULL,
  `refference` varchar(200) NOT NULL,
  `date` date NOT NULL,
  `note` varchar(100) NOT NULL,
  `amount` decimal(15,2) NOT NULL,
  `tax` decimal(15,2) NOT NULL,
  `note_remark` mediumtext NOT NULL,
  `payment_mode` varchar(100) NOT NULL,
  `generated_by` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: visitors_book
#

DROP TABLE IF EXISTS `visitors_book`;

CREATE TABLE `visitors_book` (
  `id` int NOT NULL AUTO_INCREMENT,
  `source` varchar(100) DEFAULT NULL,
  `purpose` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `contact` varchar(12) NOT NULL,
  `id_proof` varchar(50) NOT NULL,
  `no_of_pepple` int NOT NULL,
  `date` date NOT NULL,
  `in_time` varchar(20) NOT NULL,
  `out_time` varchar(20) NOT NULL,
  `note` mediumtext NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: visitors_purpose
#

DROP TABLE IF EXISTS `visitors_purpose`;

CREATE TABLE `visitors_purpose` (
  `id` int NOT NULL AUTO_INCREMENT,
  `visitors_purpose` varchar(100) NOT NULL,
  `description` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

