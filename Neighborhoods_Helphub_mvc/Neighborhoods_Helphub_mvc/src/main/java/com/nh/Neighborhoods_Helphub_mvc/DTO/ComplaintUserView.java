package com.nh.Neighborhoods_Helphub_mvc.DTO;



import java.time.LocalDateTime;


public class ComplaintUserView {

	
	private String fullName;
	private String email;
	private String mobile_no;
	private String flat_no; 
	private int complaintId;
	private String subject;
     private String message;
	private String complaintStatus;
	private LocalDateTime complaintDate;
	
	public ComplaintUserView() {}
	public ComplaintUserView(String fullName, String email, String mobile_no, String flat_no, int complaintId,
			String subject, String message, String complaintStatus, LocalDateTime complaintDate) {
		super();
		this.fullName = fullName;
		this.email = email;
		this.mobile_no = mobile_no;
		this.flat_no = flat_no;
		this.complaintId = complaintId;
		this.subject = subject;
		this.message = message;
		this.complaintStatus = complaintStatus;
		this.complaintDate = complaintDate;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMobile_no() {
		return mobile_no;
	}
	public void setMobile_no(String mobile_no) {
		this.mobile_no = mobile_no;
	}
	public String getFlat_no() {
		return flat_no;
	}
	public void setFlat_no(String flat_no) {
		this.flat_no = flat_no;
	}
	public int getUserId() {
		return complaintId;
	}
	public void setUserId(int userId) {
		this.complaintId = userId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	public String getComplaintStatus() {
		return complaintStatus;
	}
	public void setComplaintStatus(String complaintStatus) {
		this.complaintStatus = complaintStatus;
	}
	public LocalDateTime getComplaintDate() {
		return complaintDate;
	}
	public void setComplaintDate(LocalDateTime complaintDate) {
		this.complaintDate = complaintDate;
	}
	
	
	
}

