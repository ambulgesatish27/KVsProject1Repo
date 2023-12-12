package com.luv2code.mypack;

public class Student {
	String firstName;
	String lastName;
	boolean jobStatus;
	public Student(String firstName, String lastName, boolean jobStatus) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.jobStatus = jobStatus;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public boolean isJobStatus() {
		return jobStatus;
	}
	public void setJobStatus(boolean jobStatus) {
		this.jobStatus = jobStatus;
	}
	@Override
	public String toString() {
		return "Student [firstName=" + firstName + ", lastName=" + lastName + ", jobStatus=" + jobStatus + "]";
	}
	
	
}
