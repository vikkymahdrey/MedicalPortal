package com.team.test.controller;

import java.util.List;

import org.json.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.team.test.domain.AdminUser;
import com.team.test.domain.Allergy;
import com.team.test.domain.Medication;
import com.team.test.exception.MightyAppException;
import com.team.test.logger.MightyLogger;
import com.team.test.service.ConsumerInstrumentService;
import com.team.test.utils.JsonUtil;

/**
 * 
 * @author Shankara
 *
 */

@RestController
public class ConsumerInstrumentController {
	
	@Autowired
	private ConsumerInstrumentService consumerInstrumentServiceImpl;
	
	
	private static final MightyLogger logger = MightyLogger.getLogger(ConsumerInstrumentController.class);

	@RequestMapping(value = "/userLogin", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> userLoginFromApp(@RequestBody String received) throws Exception  {
		
		logger.info(" /POST User Login API ", received);
						
		JSONObject obj=null;
		JSONObject responseRep=null;
		
		ResponseEntity<String> responseEntity = null;
		try{		
				obj=new JSONObject();
				obj=(JSONObject)new JSONParser().parse(received);
		}catch(Exception e){
			logger.error("System Exception during parsing JSON",e);
		}
		try {
			logger.debug("uname",String.valueOf(obj.get("uname")));
			logger.debug("pass",String.valueOf(obj.get("pass")));
			AdminUser adminUser=consumerInstrumentServiceImpl.userLogin(String.valueOf(obj.get("uname")),String.valueOf(obj.get("pass")));
			if(adminUser!=null){
				if(adminUser.getId()>0){
					responseRep=new JSONObject();
					responseRep.put("StatusCode", HttpStatus.OK);
					String response = responseRep.toString();
					logger.debug("response"+response);
				responseEntity = new ResponseEntity<String>(response,HttpStatus.OK);
				
				}else{
					responseEntity = new ResponseEntity<String>(HttpStatus.NOT_ACCEPTABLE);	
				}
			}else{
				responseEntity = new ResponseEntity<String>(HttpStatus.NOT_ACCEPTABLE);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
			responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		return responseEntity;
	}
	
	@RequestMapping(value = "/getAllergies", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getAllergiesInfoHandler() throws Exception {
		logger.debug("IN GET allergiesCaller");
		ResponseEntity<String> responseEntity = null;
		JSONArray jsonarray = new JSONArray();
		
		try {		
			List<Allergy> allergiesList=consumerInstrumentServiceImpl.getAllergiesInfo();
			for(Allergy al : allergiesList){
				JSONObject rObj = new JSONObject();
				rObj.put("AllergyName", al.getAllergiesName());
				rObj.put("AllergyType",al.getAllergiesType());
				rObj.put("CreatedDate", al.getCreatedDate());
				rObj.put("EffectiveDate", al.getEffectiveDate());
				jsonarray.put(rObj);
			}
			String response = jsonarray.toString();
			
			responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
			String response = JsonUtil.objToJson(jsonarray);
			responseEntity = new ResponseEntity<String>(response, e.getHttpStatus());
		}
		logger.debug("JSonarray",jsonarray);
		return responseEntity;
	}
	
	
	@RequestMapping(value = "/getMedication", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getMedicationInfoHandler() throws Exception {
		logger.debug("IN GET medicationInfoCaller");
		ResponseEntity<String> responseEntity = null;
		JSONArray jsonarray = new JSONArray();
		
		try {		
			List<Medication> medicationInfo=consumerInstrumentServiceImpl.getMedicationInfo();
			for(Medication md : medicationInfo){
				JSONObject rObj = new JSONObject();
				rObj.put("MedicationName", md.getMedicationName());
				rObj.put("MedicationType",md.getMedicationType());
				rObj.put("CreatedDate", md.getCreatedDate());
				rObj.put("EffectiveDate", md.getEffectiveDate());
				jsonarray.put(rObj);
			}
			String response = jsonarray.toString();
			
			responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
			String response = JsonUtil.objToJson(jsonarray);
			responseEntity = new ResponseEntity<String>(response, e.getHttpStatus());
		}
		logger.debug("JSonarray",jsonarray);
		return responseEntity;
	}
 	
	
}
	