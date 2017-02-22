package com.team.test.service;

import java.util.List;

import com.team.test.domain.AdminUser;
import com.team.test.domain.Allergy;
import com.team.test.domain.Info;
import com.team.test.domain.Medication;
import com.team.test.domain.Rowindex;

/**
 * 
 * @author Shankara
 *
 */
public interface ConsumerInstrumentService {
	
	public List<Allergy> getAllergiesInfo() throws Exception;

	public List<Medication> getMedicationInfo()throws Exception;

	public AdminUser userLogin(String uname, String pass)throws Exception;

	public List<Info> getInfo()throws Exception;

	public List<Rowindex> getIndexVals()throws Exception;

	public Rowindex update(Rowindex initialIndex)throws Exception;
	
	

}
