package com.team.test.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.team.test.domain.Waterconsumption;

public interface WaterConsumptionDao extends JpaRepository<Waterconsumption, Serializable> {
	
	@Query("From Waterconsumption")
	List<Waterconsumption> getWaterConsumed()throws Exception;
}
