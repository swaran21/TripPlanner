package com.sai.classes;

public class EditTrip {
	private int id;
	private String tripName;
	private String destination;
	private String startDate;
	private String endDate;
	private double budget;
	private String participants;
	public EditTrip(int id, String tripName, String destination, String startDate, String endDate, double budget,
			String participants) {
		super();
		this.id = id;
		this.tripName = tripName;
		this.destination = destination;
		this.startDate = startDate;
		this.endDate = endDate;
		this.budget = budget;
		this.participants = participants;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTripName() {
		return tripName;
	}
	public void setTripName(String tripName) {
		this.tripName = tripName;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getEndDate() {
		return endDate;
	}
	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
	public double getBudget() {
		return budget;
	}
	public void setBudget(double budget) {
		this.budget = budget;
	}
	public String getParticipants() {
		return participants;
	}
	public void setParticipants(String participants) {
		this.participants = participants;
	}
	
}
