package com.nh.Neighborhoods_Helphub.Entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class Complaint {
	

	   @Id
	   @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int complaintId;
	  
	    @ManyToOne
	    @JoinColumn(name = "user_id")
	    private users user;
           
	    private String subject;
	    private String message;
	    private String complaintStatus = "Pending";
	    private LocalDateTime complaintDate = LocalDateTime.now();
	    private String resolveMessage;
	    
	    public Complaint() {}

		public Complaint(int complaintId, users user, String subject, String message, String complaintStatus,
				LocalDateTime complaintDate, String resolveMessage) {
			super();
			this.complaintId = complaintId;
			this.user = user;
			this.subject = subject;
			this.message = message;
			this.complaintStatus = complaintStatus;
			this.complaintDate = complaintDate;
			this.resolveMessage = resolveMessage;
		}

		public int getComplaintId() {
			return complaintId;
		}

		public void setComplaintId(int complaintId) {
			this.complaintId = complaintId;
		}

		public users getUser() {
			return user;
		}

		public void setUser(users user) {
			this.user = user;
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

		public String getResolveMessage() {
			return resolveMessage;
		}

		public void setResolveMessage(String resolveMessage) {
			this.resolveMessage = resolveMessage;
		}


		
		
		
	    
	    
}
