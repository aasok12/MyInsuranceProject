package com.insurance.entities;


import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import com.insurance.entities.VehicleProfile;

@Entity
@Table(name = "InsuranceUser")
public class UserProfile {

	@Id
	@Column(name="id")
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="First_name")
	private String fname;
	
	@Column(name="last_name")
	private String lname;
	
	
	@Column(name="gender")
	private String gender;
	
	@Column(name="age")
	private String age;
	
	@Column(name="phone")
	private String phone;
	
	@Column(name="address")
	private String address;
	
	@Column(name="SSN")
	private String ssn;
	
	@Column(name="drivinglisence_no")
	private String drivinglisenceno;
	
	@OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL)
	@JoinTable(name = "User_Vehicle",
		joinColumns = { @JoinColumn(name="InsuranceUser_id", referencedColumnName="id")},
		inverseJoinColumns = {@JoinColumn(name="AddVehicle_id", referencedColumnName="id")}
	)
	private Set<VehicleProfile> vehicleProfile;


	public Set<VehicleProfile> getVehicleProfile() {
		return vehicleProfile;
	}

	public void setVehicleProfile(Set<VehicleProfile> vehicleProfile) {
		this.vehicleProfile = vehicleProfile;
	}



	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getSsn() {
		return ssn;
	}

	public void setSsn(String ssn) {
		this.ssn = ssn;
	}

	public String getDrivinglisenceno() {
		return drivinglisenceno;
	}

	public void setDrivinglisenceno(String drivinglisenceno) {
		this.drivinglisenceno = drivinglisenceno;
	}


}
