package com.team.test.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.team.test.dao.AllergiesDao;
import com.team.test.dao.InfoDao;
import com.team.test.dao.MedicationDao;
import com.team.test.dao.RowIndexDao;
import com.team.test.dao.UserLoginDao;
import com.team.test.dao.WaterConsumptionDao;
import com.team.test.domain.AdminUser;
import com.team.test.domain.Allergy;
import com.team.test.domain.Info;
import com.team.test.domain.Medication;
import com.team.test.domain.Rowindex;
import com.team.test.domain.Waterconsumption;
import com.team.test.logger.MightyLogger;
import com.team.test.service.ConsumerInstrumentService;

/**
 * 
 * @author Shankara
 *
 */
@Service("consumerInstrumentServiceImpl")
public class ConsumerInstrumentServiceImpl implements ConsumerInstrumentService {

	private final MightyLogger logger = MightyLogger.getLogger(ConsumerInstrumentServiceImpl.class);
	
	
	@Autowired
	private AllergiesDao allergiesDao;
	
	@Autowired
	private MedicationDao medicationDao;
	
	@Autowired
	private UserLoginDao userLoginDao;
	
	@Autowired
	private InfoDao infoDao;
	
	@Autowired
	private RowIndexDao rowIndexDao;
	
	@Autowired
	private WaterConsumptionDao waterConsumptionDao;

	public List<Allergy> getAllergiesInfo() throws Exception {
		return allergiesDao.getAllergiesInfo();
	}

	
	public List<Medication> getMedicationInfo() throws Exception {
		return medicationDao.getMedicationInfo();
		
	}


	public AdminUser userLogin(String loginId, String password) throws Exception {
		return userLoginDao.getUserLogin(loginId, password);
	}


	
	public List<Info> getInfo() throws Exception {
		return infoDao.getInfo();
	}


	
	public List<Rowindex> getIndexVals() throws Exception {
		return rowIndexDao.getIndexVals();
	}


	public Rowindex update(Rowindex initialIndex) throws Exception {
		return rowIndexDao.save(initialIndex);		
	}


	
	public List<Waterconsumption> getWaterConsumed() throws Exception {
		return waterConsumptionDao.getWaterConsumed();
	}

	
}