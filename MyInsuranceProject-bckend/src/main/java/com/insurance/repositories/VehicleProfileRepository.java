package com.insurance.repositories;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;


import com.insurance.entities.VehicleProfile;

@Repository
public class VehicleProfileRepository {

	@PersistenceContext
	EntityManager em;
	
	@Transactional
	public VehicleProfile save(VehicleProfile vehicleProfile){
		return em.merge(vehicleProfile);
	}
	@Transactional
	public VehicleProfile getById(int id){
		String sql = "select * from AddVehicle where id = " + id;
		Query q = em.createNativeQuery(sql, VehicleProfile.class);
		return (VehicleProfile)q.getSingleResult();
	}

}
