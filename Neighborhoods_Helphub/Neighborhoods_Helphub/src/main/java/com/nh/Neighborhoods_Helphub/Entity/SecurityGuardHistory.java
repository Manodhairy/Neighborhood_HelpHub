package com.nh.Neighborhoods_Helphub.Entity;

import java.time.LocalDateTime;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class SecurityGuardHistory {

	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    private int id;
	    private int guardId;
	    private String guardName;
	    private String assignedArea;
	    private String shift;
	    private String status;
	   
	    
	    private LocalDateTime date= LocalDateTime.now();;
	    
	    public SecurityGuardHistory() {}

		public SecurityGuardHistory(int id, int guardId, String guardName, String assignedArea, String shift,
				String status, LocalDateTime date) {
			super();
			this.id = id;
			this.guardId = guardId;
			this.guardName = guardName;
			this.assignedArea = assignedArea;
			this.shift = shift;
			this.status = status;
			this.date = date;
		}

		public int getId() {
			return id;
		}

		public void setId(int id) {
			this.id = id;
		}

		public int getGuardId() {
			return guardId;
		}

		public void setGuardId(int guardId) {
			this.guardId = guardId;
		}

		public String getGuardName() {
			return guardName;
		}

		public void setGuardName(String guardName) {
			this.guardName = guardName;
		}

		public String getAssignedArea() {
			return assignedArea;
		}

		public void setAssignedArea(String assignedArea) {
			this.assignedArea = assignedArea;
		}

		public String getShift() {
			return shift;
		}

		public void setShift(String shift) {
			this.shift = shift;
		}

		public String getStatus() {
			return status;
		}

		public void setStatus(String status) {
			this.status = status;
		}

		public LocalDateTime getDate() {
			return date;
		}

		public void setDate(LocalDateTime date) {
			this.date = date;
		}

		
		
	    
	

	    
}
