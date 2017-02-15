package com.team.test.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.team.test.domain.Info;

public interface InfoDao extends JpaRepository<Info, Serializable> {
	
	@Query("From Info")
	List<Info> getInfo()throws Exception;

}
