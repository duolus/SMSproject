package com.sms.util;

public interface SQLConstants
{
	// ADMIN SQL
	String ADD_ADMIN_SQL = "INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_pwd`) VALUES (?, ?, ?)";
	String DELETE_ADMIN_SQL = "DELETE FROM `admin` WHERE (`admin_id`= ? )";
	String UPDATE_ADMIN_SQL = "UPDATE `admin` SET " + "`admin_name`= ?, `admin_pwd`= ?, `admin_login_ip`= ?, `admin_login_time`= ?WHERE (`admin_id`= ?)";
	String GET_ADMIN_SQL = "SELECT * FROM `admin` WHERE (`admin_id`= ? )";
	String QUERY_ADMIN_SQL = "SELECT * FROM `admin`";

	// ADMINLOG
	String ADD_ADMINLOG_SQL = "INSERT INTO `admin_log` (`admin_id`, `filename`, `method`, `query`, `ltime`) VALUES (?, ?, ?, ?, ?)";
	String DELETE_ADMINLOG_SQL = "DELETE FROM `admin_log` WHERE (`log_id`= ? )";
	// String UPDATE_ADMINLOG_SQL = "";
	String GET_ADMINLOG_SQL = "SELECT * FROM `admin_log` WHERE (`log_id`= ? )";
	String QUERY_ADMINLOG_SQL = "SELECT * FROM `admin_log`";

	// AuthAccess
	String ADD_AUTHACCESS_SQL = "INSERT INTO `auth_access` (`role_id`, `teacher_id`, `node_id`, `node_level`, `module`) VALUES (?, ?, ?, ?, ?)";
	String DELETE_AUTHACCESS_SQL = "DELETE FROM `auth_access` WHERE (`role_id`= ? )";
	String UPDATE_AUTHACCESS_SQL = "UPDATE `auth_access` SET `role_id`= ?, `teacher_id`= ?,`node_id`= ?, `node_level`= ?, `module`= ? WHERE (`role_id`= ? ) AND (`node_id`= ?) AND (`node_level`= ?) ";
	String GET_AUTHACCESS_SQL = "";
	String QUERY_AUTHACCESS_SQL = "";

	// AuthNode
	String ADD_AUTHNODE_SQL = "";
	String DELETE_AUTHNODE_SQL = "DELETE FROM `teacher` WHERE (`teacher_id`= ? )";
	String UPDATE_AUTHNODE_SQL = "";
	String GET_AUTHNODE_SQL = "";
	String QUERY_AUTHNODE_SQL = "";

	// AuthRole
	String ADD_AUTHROLE_SQL = "";
	String DELETE_AUTHROLE_SQL = "DELETE FROM `teacher` WHERE (`teacher_id`= ? )";
	String UPDATE_AUTHROLE_SQL = "";
	String GET_AUTHROLE_SQL = "";
	String QUERY_AUTHROLE_SQL = "";

	// Teacher
	String ADD_TEACHER_SQL = "INSERT INTO `teacher` (`teacher_password`,`teacher_name`,`teacher_dept`,`teacher_job`, `teacher_status`, `teacher_create_id`, `teacher_create_time`, `teacher_create_ip`, `role_id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	String DELETE_TEACHER_SQL = "DELETE FROM `teacher` WHERE (`teacher_id`= ? )";
	String UPDATE_TEACHER_SQL = "UPDATE `teacher` SET `teacher_password`= ?,`teacher_name`= ?, `teacher_dept`= ?,`teacher_job`= ?,`teacher_status`= ?, `teacher_login_time`= ?, `teacher_login_ip`= ?, `teacher_session`= ?, `role_id`= ? WHERE (`teacher_id`= ?)";
	String QUERY_TEACHER_SQL = "SELECT * FROM `teacher` LIMIT ?, ?";
	String GET_TEACHER_SQL = "SELECT * FROM `teacher` WHERE (`teacher_id`= ? )";

	// Student
	String ADD_STUDENT_SQL = "INSERT INTO `student` (`student_id`,`student_password`, `student_name`, `student_major`, `grade`, `edu_systme`, `student_status`, `student_create_id`, `student_create_time`, `student_create_ip`, `role_id`) VALUES (NULL,?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	String DELETE_STUDENT_SQL = "DELETE FROM `student` WHERE (`student_id`= ? )";
	String UPDATE_STUDENT_SQL = "UPDATE `student` SET `student_password`= ?, `student_name`= ?, `student_major`= ?, `grade`= ?, `edu_systme`= ?, `student_status`= ?, `student_login_time`= ?, `student_login_ip`= ?,`student_session`= ?,`role_id`= ? WHERE (`student_id`= ?)";
	String QUERY_STUDENT_SQL = "SELECT * FROM `student`";
	String GET_STUDENT_SQL = "SELECT * FROM `student` WHERE (`student_id`= ? )";
	String GET_BYIDNUM_STUDENT_SQL = "SELECT student_id FROM `student` WHERE (`role_id`= ? )";
	
	// StudentInfo
	String ADD_STUDENTINFO_SQL = "INSERT INTO `student_info` (`info_id` ,`student_id`, `name_old`, `pic`, `sex`, `birth`, `info_department`, `info_political`, `id_number`, `nation`, `origo`, `origin`, `exam_number`, `school`, `address`, `zip`, `info_tel`, `is_fresh`) VALUES (Null,?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
	String DELETE_STUDENTINFO_SQL = "DELETE FROM `student_info` WHERE (`info_id`= ? )";
	String UPDATE_STUDENTINFO_SQL = "UPDATE `student_info` SET `name_old`= ?, `pic`= ?, `sex`= ?, `birth`= ?, `info_department`= ?, `info_political`= ?, `id_number`= ?, `nation`= ?, `origo`= ?, `origin`= ?, `exam_number`= ?, `school`= ?, `address`= ?, `zip`= ?, `info_tel`= ?, `is_fresh`= ? WHERE (`info_id`= ?)";
	String GET_STUDENTINFO_SQL = "SELECT * FROM `student_info` WHERE (`info_id`= ? )";
	String QUERY_STUDENTINFO_SQL = "SELECT * FROM `student_info` ";

	// StudentLeaving
	String ADD_STUDENTLEAVING_SQL = "INSERT INTO `student_leaving` (`student_id`, `leaving_date`, `leaving_major`, `degree`, `certificate_type`, `certificate_id`, `degree_certificate`, `degree_certificate_id`) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	String DELETE_STUDENTLEAVING_SQL = "DELETE FROM `student_leaving` WHERE (`leaving_id`= ? )";
	String UPDATE_STUDENTLEAVING_SQL = "UPDATE `student_leaving` SET `leaving_date`= ?, `leaving_major`= ?, `degree`= ?, `certificate_type`= ?, `certificate_id`= ?, `degree_certificate`= ?, `degree_certificate_id`= ? WHERE (`leaving_id`= ?)";
	String GET_STUDENTLEAVING_SQL = "SELECT * FROM `student_leaving` WHERE (`leaving_id`= ? )";
	String QUERY_STUDENTLEAVING_SQL = "SELECT * FROM `student_leaving` WHERE (`student_id`= ? )";

	// StudentFamily
	String ADD_STUDENTFAMILY_SQL = "INSERT INTO `student_family` (`student_id`, `family_name`, `age`, `relation`, `family_political`, `family_work`, `family_job`, `family_office_tel`, `family_tel`) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
	String DELETE_STUDENTFAMILY_SQL = "DELETE FROM `student_family` WHERE (`family_id`= ? )";
	String UPDATE_STUDENTFAMILY_SQL = "UPDATE `student_family` SET `family_name`= ?, `age`= ?, `relation`= ?, `family_political`= ?, `family_work`= ?, `family_job`= ?, `family_office_tel`= ?, `family_tel`= ? WHERE (`family_id`= ?)";
	String GET_STUDENTFAMILY_SQL = "SELECT * FROM `student_family` WHERE (`family_id`= ? )";
	String QUERY_STUDENTFAMILY_SQL = "SELECT * FROM `student_family` WHERE (`student_id`= ? )";

	// StudentResume
	String ADD_STUDENTRESUME_SQL = "INSERT INTO `student_resume` (`student_id`, `resume_sdate`, `resume_edate`, `resume_dept`, `resume_job`) VALUES (?, ?, ?, ?, ?, ?)";
	String DELETE_STUDENTRESUME_SQL = "DELETE FROM `student_resume` WHERE (`resume_id`= ? )";
	String UPDATE_STUDENTRESUME_SQL = "UPDATE `student_resume` SET `resume_sdate`= ?, `resume_edate`= ?, `resume_dept`= ?, `resume_job`= ? WHERE (`resume_id`= ?)";
	String GET_STUDENTRESUME_SQL = "SELECT * FROM `student_resume` WHERE (`resume_id`= ? )";
	String QUERY_STUDENTRESUME_SQL = "SELECT * FROM `student_resume` WHERE (`student_id`= ? )";

	// StudentRp
	String ADD_STUDENTRP_SQL = "INSERT INTO `student_rp` (`student_id`, `rp_date`, `rp_type`, `rp_annual`, `rp_details`, `rp_material_id`) VALUES (?, ?, ?, ?, ?, ?)";
	String DELETE_STUDENTRP_SQL = "DELETE FROM `student_rp` WHERE (`rp_id`= ? )";
	String UPDATE_STUDENTRP_SQL = "UPDATE `student_rp` SET `rp_date`= ?, `rp_type`= ?, `rp_annual`= ?, `rp_details`= ?, `rp_material_id`= ? WHERE (`rp_id`= ?)";
	String GET_STUDENTRP_SQL = "SELECT * FROM `student_rp` WHERE (`rp_id`= ? )";
	String QUERY_STUDENTRP_SQL = "SELECT * FROM `student_rp` WHERE (`student_id`= ? )";

	// StudentTransfer
	String ADD_STUDENTTRANSFER_SQL = "INSERT INTO `student_transfer` (`student_id`, `transfer_date`, `transfer_type`, `transfer_annual`,`transfer_reason`,`transfer_material_id`) VALUES (?, ?, ?, ?, ?, ?)";
	String DELETE_STUDENTTRANSFER_SQL = "DELETE FROM `student_transfer` WHERE (`transfer_id`= ? )";
	String UPDATE_STUDENTTRANSFER_SQL = "UPDATE `student_transfer` SET `transfer_date`= ?, `transfer_type`= ?, `transfer_annual`= ?, `transfer_reason`= ?, `transfer_material_id`= ? WHERE (`transfer_id`= ?)";
	String GET_STUDENTTRANSFER_SQL = "SELECT * FROM `student_transfer` WHERE (`transfer_id`= ? )";
	String QUERY_STUDENTTRANSFER_SQL = "SELECT * FROM `student_transfer` WHERE (`student_id`= ? )";

}
