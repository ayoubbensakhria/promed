<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Mailsmsconf {

    public function __construct() {
        $this->CI = & get_instance();
        $this->CI->config->load("mailsms");
        $this->CI->load->library('smsgateway');
        $this->CI->load->library('mailgateway');
        $this->CI->load->library('customlib');
        $this->CI->load->library('pushnotification');
        
        $this->config_mailsms = $this->CI->config->item('mailsms');
    }

    public function mailsms($send_for, $sender_details, $date = NULL, $exam_schedule_array = NULL) {

        $chk_mail_sms = $this->CI->customlib->sendMailSMS($send_for);
        // print_r($chk_mail_sms);
        // exit();
        if (!empty($chk_mail_sms)) {
            if (($send_for == "opd_patient_registration") || ($send_for == "patient_revisit")) {

                if ($chk_mail_sms['mail']) {
                    $this->CI->mailgateway->sentRegisterMail($sender_details['patient_id'], $sender_details['email'], $sender_details['opd_no']);
                }

                if ($chk_mail_sms['sms']){
                    $this->CI->smsgateway->sentRegisterSMS($sender_details['patient_id'], $sender_details['contact_no'], $sender_details['opd_no']);
                } 

                if ($chk_mail_sms['mobileapp']) {
                     $patient_result = $this->CI->patient_model->getpatientDetails($sender_details['patient_id']);
                        $message       = 'Text OPD Patient';
                        $message_title = 'OPD Patient ';
                        if (!empty($patient_result)) {
                             $push_array = array(
                            'title' => $message_title,
                            'body'  => $this->CI->customlib->getLimitChar($message));
                            $this->CI->pushnotification->send($patient_result['app_key'], $push_array, "mail_sms");
                    }
                }

            } 
            else if ($send_for == "ipd_patient_registration") {
                if ($chk_mail_sms['mail']) {
                    $this->CI->mailgateway->sentRegisterMail($sender_details['patient_id'], $sender_details['email'], $sender_details['ipd_no']);
                }
                if ($chk_mail_sms['sms']) {
                    $this->CI->smsgateway->sentRegisterSMS($sender_details['patient_id'], $sender_details['contact_no'], $sender_details['ipd_no']);
                }
            } 
            else if ($send_for == "patient_discharged") {
                if ($chk_mail_sms['mail']) {
                    $this->CI->mailgateway->sentDischargedMail($sender_details['patient_id'], $sender_details['ipd_id']);
                }
                if ($chk_mail_sms['sms']) {
                    $this->CI->smsgateway->sentDischargedSMS($sender_details['patient_id'], $sender_details['ipd_id']);
                }
            } 
            else if ($send_for == "appointment") {
                if ($chk_mail_sms['mail']) {
                    $this->CI->mailgateway->sentAppointmentConfirmation($sender_details['appointment_id']);
                }
                if ($chk_mail_sms['sms']) {
                    $this->CI->smsgateway->sentAppointmentConfirmation($sender_details['appointment_id']);
                }
            } 
            else if ($send_for == "exam_result") {
                $this->sendResult($chk_mail_sms, $sender_details, $exam_schedule_array);
            } 
            else if ($send_for == "login_credential") {
                if ($chk_mail_sms['mail']) {

                    $this->CI->mailgateway->sendLoginCredential($chk_mail_sms, $sender_details);
                }
                if ($chk_mail_sms['sms']) {
                    $this->CI->smsgateway->sendLoginCredential($chk_mail_sms, $sender_details);
                }
            } 
            elseif ($send_for == "fee_submission") {
                $invoice = json_decode($sender_details['invoice']);

                if ($chk_mail_sms['mail']) {
                    $this->CI->mailgateway->sentAddFeeMail($invoice->invoice_id, $invoice->sub_invoice_id, $sender_details['email']);
                }
                if ($chk_mail_sms['sms']) {
                    $this->CI->smsgateway->sentAddFeeSMS($invoice->invoice_id, $invoice->sub_invoice_id, $sender_details['contact_no']);
                }
            } else if ($send_for == "live_consult") {
                if ($chk_mail_sms['mail']) {
                    $this->CI->mailgateway->sentLiveconsultMail($sender_details['patient_id'], $sender_details['email'],$sender_details['conference_id']);
                }
                if ($chk_mail_sms['sms']) {
                    $this->CI->smsgateway->sentLiveconsultSMS($sender_details['patient_id'], $sender_details['contact_no'],$sender_details['conference_id']);
                }
            } 
            elseif ($send_for == "absent_attendence") {

                $this->sendAbsentAttendance($chk_mail_sms, $sender_details, $date);
            }elseif ($send_for == "live_meeting") {

                $this->sendMeeting($chk_mail_sms, $sender_details);
            } else {
                
            }
        }
        //===============
    }

    public function sendResult($chk_mail_sms, $exam_result, $exam_schedule_array) {
        if ($chk_mail_sms['mail'] OR $chk_mail_sms['sms']) {
            $get_result = $this->getStudentResult($exam_result, $exam_schedule_array);

            foreach ($get_result as $res_key => $res_value) {
                $result = "passed";
                $exam_name = "";
                $total_marks = 0;
                $achive_marks = 0;
                $student_name = "";
                $guardian_phone = "";
                $email = "";
                foreach ($res_value as $each_key => $each_value) {
                    $subject_passing_marks = $each_value['passing_marks'];
                    $subject_get_marks = $each_value['get_marks'];
                    if ($subject_passing_marks > $subject_get_marks) {
                        $result = "failed";
                    }

                    $total_marks = $total_marks + $each_value['full_marks'];
                    $achive_marks = $achive_marks + $each_value['get_marks'];
                    $student_name = $each_value['firstname'] . " " . $each_value['lastname'];
                    $email = $each_value['email'];
                    $exam_name = $each_value['exam_name'];
                    $guardian_phone = $each_value['guardian_phone'];
                }

                //===========send Mail and sms================
                $detail = array(
                    'result' => $result,
                    'total_marks' => $total_marks,
                    'achive_marks' => $achive_marks,
                    'student_name' => $student_name,
                    'exam_name' => $exam_name,
                    'email' => $email,
                    'guardian_phone' => $guardian_phone,
                );
                if ($chk_mail_sms['mail']) {
                    $this->CI->mailgateway->sentExamResultMail($detail);
                }
                if ($chk_mail_sms['sms']) {
                    $this->CI->smsgateway->sentExamResultSMS($detail);
                }
            }
        }
    }

    public function getStudentResult($ex_array, $exam_schedule_array) {
        $result = array();
        $exam_schedule = implode(',', $exam_schedule_array);
        foreach ($ex_array as $ex_k => $ex_v) {
            $result[] = $this->CI->examresult_model->getStudentExamResultByStudent($ex_v, $ex_k, $exam_schedule);
        }
        return $result;
    }

    public function sendAbsentAttendance($chk_mail_sms, $student_session_array, $date) {

        if ($chk_mail_sms['mail'] OR $chk_mail_sms['sms']) {
            $student_result = $this->getAbsentStudentlist($student_session_array);
            if (!empty($student_result)) {
                foreach ($student_result as $student_result_k => $student_result_v) {
                    $detail = array(
                        'contact_no' => $student_result_v->guardian_phone,
                        'email' => $student_result_v->guardian_email,
                        'date' => $date,
                        'student_name' => $student_result_v->firstname . " " . $student_result_v->lastname,
                    );

                    // if ($chk_mail_sms['mail']) {
                    //     $this->CI->mailgateway->sentAbsentStudentMail($detail);
                    // }
                    if ($chk_mail_sms['sms']) {

                        $this->CI->smsgateway->sentAbsentStudentSMS($detail);
                    }
                }
            }
        }
    }

    public function getAbsentStudentlist($student_session_array) {

        $result = $this->CI->student_model->getStudentListBYStudentsessionID($student_session_array);
        if (!empty($result)) {
            return $result;
        }
        return false;
    }

     public function sendMeeting($chk_mail_sms, $staff_details)
    {

        $staff_sms_list   = array();
        $staff_email_list = array();

        if ($chk_mail_sms['mail'] or $chk_mail_sms['sms']) {

            if (!empty($staff_details)) {
                foreach ($staff_details as $staff_key => $staff_value) {

                    if ($staff_value['email'] != "") {
                        $staff_email_list[$staff_value['email']] = array(
                            'title'       => $staff_value['title'],
                            'date'        => $staff_value['date'],
                            'duration'    => $staff_value['duration'],
                            'employee_id' => $staff_value['employee_id'],
                            'department'  => $staff_value['department'],
                            'designation' => $staff_value['designation'],
                            'name'        => $staff_value['name'],
                            'contact_no'  => $staff_value['contact_no'],
                            'email'       => $staff_value['email'],
                        );
                    }

                    if ($staff_value['contact_no'] != "") {
                        $staff_sms_list[$staff_value['contact_no']] = array(
                            'title'       => $staff_value['title'],
                            'date'        => $staff_value['date'],
                            'duration'    => $staff_value['duration'],
                            'employee_id' => $staff_value['employee_id'],
                            'department'  => $staff_value['department'],
                            'designation' => $staff_value['designation'],
                            'name'        => $staff_value['name'],
                            'contact_no'  => $staff_value['contact_no'],
                            'email'       => $staff_value['email'],
                        );
                    }
                }
               
                if ($chk_mail_sms['mail']) {
                    if ($staff_email_list) {
                        $this->CI->mailgateway->sentOnlineMeetingStaffMail($staff_email_list);
                    }
                }
                if ($chk_mail_sms['sms']) {
                    if ($staff_sms_list) {
                        $this->CI->smsgateway->sentOnlineMeetingStaffSMS($staff_sms_list);
                    }
                }
            }
        }
    }

}
