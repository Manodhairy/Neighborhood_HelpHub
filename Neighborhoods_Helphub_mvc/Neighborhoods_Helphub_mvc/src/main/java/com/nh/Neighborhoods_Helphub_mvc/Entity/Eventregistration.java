package com.nh.Neighborhoods_Helphub_mvc.Entity;

public class Eventregistration {

	private int eId;
    private String eventName;
    private String organizer;
    private String eventDate;
    private String venue;
    private String onlineLink;
    private String message;
    private String fullName;
    private String status;
    
    
    public Eventregistration() {}
	
	public Eventregistration(int eId, String eventName, String organizer, String eventDate, String venue,
			String onlineLink, String message, String fullName,String status) {
		super();
		this.eId = eId;
		this.eventName = eventName;
		this.organizer = organizer;
		this.eventDate = eventDate;
		this.venue = venue;
		this.onlineLink = onlineLink;
		this.message = message;
		this.fullName = fullName;
		this.status=status;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getFullName() {
		return fullName;
	}

	public void setFullName(String fullName) {
		this.fullName = fullName;
	}

	public int geteId() {
		return eId;
	}
	public void seteId(int eId) {
		this.eId = eId;
	}
	public String getEventName() {
		return eventName;
	}
	public void setEventName(String eventName) {
		this.eventName = eventName;
	}
	public String getOrganizer() {
		return organizer;
	}
	public void setOrganizer(String organizer) {
		this.organizer = organizer;
	}
	public String getEventDate() {
		return eventDate;
	}
	public void setEventDate(String eventDate) {
		this.eventDate = eventDate;
	}
	public String getVenue() {
		return venue;
	}
	public void setVenue(String venue) {
		this.venue = venue;
	}
	public String getOnlineLink() {
		return onlineLink;
	}
	public void setOnlineLink(String onlineLink) {
		this.onlineLink = onlineLink;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
    
    
    
    
    
}
