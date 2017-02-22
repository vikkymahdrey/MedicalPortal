package com.team.test.dao;

import java.io.Serializable;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.team.test.domain.Rowindex;

public interface RowIndexDao extends JpaRepository<Rowindex, Serializable> {
	
	@Query("From Rowindex")
	List<Rowindex> getIndexVals() throws Exception;

}
