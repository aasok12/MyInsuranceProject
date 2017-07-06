package com.insurance.controllers;

import java.io.IOException;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.insurance.entities.UserProfile;
import com.insurance.entities.VehicleProfile;
import com.insurance.repositories.UserProfileRepository;
import com.insurance.repositories.VehicleProfileRepository;

@Controller
public class UserVehicleController {
	
	@Autowired
	UserProfileRepository userProfileRepository;
	
	@Autowired
	VehicleProfileRepository vehicleProfileRepository;
	
	@RequestMapping("/register")
	public String register(HttpServletRequest request, HttpServletResponse response) throws IOException{
		return "register";
	}
	
	@RequestMapping(value= "/register", method = RequestMethod.POST)
	public ModelAndView registerUserProfile(HttpServletRequest request){
	
		UserProfile userProfile = new UserProfile();
		userProfile.setFname(request.getParameter("fname"));
		userProfile.setFname(request.getParameter("fname"));
		userProfile.setLname(request.getParameter("lname"));
		userProfile.setGender(request.getParameter("gender"));
		userProfile.setAge(request.getParameter("age"));
		userProfile.setPhone(request.getParameter("phone"));
		userProfile.setAddress(request.getParameter("address"));
	    userProfile.setSsn(request.getParameter("ssn"));
		userProfile.setDrivinglisenceno(request.getParameter("drivinglisenceno"));
		
		userProfile=userProfileRepository.save(userProfile);
		System.out.println("Id : " + userProfile.getId());
		ModelAndView mv = new ModelAndView("confirmation");
		mv.addObject("profile",userProfile);
		return mv;
		}
		@RequestMapping(value="/AddVehicleDetail", method=RequestMethod.GET)
		public String AddVehicleDetail(HttpServletRequest request, HttpServletResponse response) throws IOException{
			return "AddVehicleDetail";
		}
		
		@RequestMapping(value= "/AddVehicle", method = RequestMethod.POST)
		public ModelAndView addVehicleDetail(HttpServletRequest request, HttpServletResponse response){
			System.out.println("profile Id = " + request.getParameter("profileId"));
			Integer profileId=Integer.parseInt(request.getParameter("profileId"));
			
			VehicleProfile vehicleProfile = new VehicleProfile();
			vehicleProfile.setMake(request.getParameter("make"));
			vehicleProfile.setModel(request.getParameter("model"));
			vehicleProfile.setYear(request.getParameter("year"));
			vehicleProfile.setVinnumber(request.getParameter("vinnumber"));
			vehicleProfile.setLisenceplatenumber(request.getParameter("lisenceplatenumber"));
			
		
			
			UserProfile user = userProfileRepository.getById(profileId);
			Set<VehicleProfile> vehicles=user.getVehicleProfile() ;
			vehicles.add(vehicleProfile);
			
			user.setVehicleProfile(vehicles);
			
			userProfileRepository.update(user);
			
	
			System.out.println("Id : " + vehicleProfile.getId());
			ModelAndView mv = new ModelAndView("vehicleconfirmation");
			mv.addObject("vprofile",vehicleProfile);
			
			return mv;
		}
	

}
