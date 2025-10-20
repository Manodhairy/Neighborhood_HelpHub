package com.nh.Neighborhoods_Helphub.Entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Complaint {

	   @Id
	    private int complaintId;
	  
	    
	    private int userId;
	    private String subject;
	    private String message;
	    private String complaintStatus = "Pending";
	    private LocalDateTime complaintDate = LocalDateTime.now();
	    
	    
	    public Complaint() {}
		
		public Complaint(int complaintId, int userId, String subject, String message, String complaintStatus,
				LocalDateTime complaintDate) {
			super();
			this.complaintId = complaintId;
			this.userId = userId;
			this.subject = subject;
			this.message = message;
			this.complaintStatus = complaintStatus;
			this.complaintDate = complaintDate;
		}

		public int getUserId() {
			return userId;
		}

		public void setUserId(int userId) {
			this.userId = userId;
		}

		public int getComplaintId() {
			return complaintId;
		}
		public void setComplaintId(int complaintId) {
			this.complaintId = complaintId;
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
