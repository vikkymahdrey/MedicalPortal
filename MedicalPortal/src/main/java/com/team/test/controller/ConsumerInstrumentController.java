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
import com.team.test.domain.Info;
import com.team.test.domain.Medication;
import com.team.test.domain.Rowindex;
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
		logger.debug("Vikky",responseEntity);
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
			Medication md=consumerInstrumentServiceImpl.getMedicationInfo().get(0);
			
				JSONObject rObj = new JSONObject();
				rObj.put("MedicationName", md.getMedicationName());
				rObj.put("MedicationType",md.getMedicationType());
				rObj.put("CreatedDate", md.getCreatedDate());
				rObj.put("EffectiveDate", md.getEffectiveDate());
				//jsonarray.put(rObj);
			
			String response = rObj.toString();
			
			responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
			String response = JsonUtil.objToJson(jsonarray);
			responseEntity = new ResponseEntity<String>(response, e.getHttpStatus());
		}
		logger.debug("JSonarray",jsonarray);
		return responseEntity;
	}
	
	
	@RequestMapping(value = "/getISO4", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getISO4Handler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			logger.debug("SizeindexList",indexList);
			if(indexList!=null && !indexList.isEmpty()){
				logger.debug("insideSizeindexList",indexList.size());
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("ISO4", info.getIso4());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	
	@RequestMapping(value = "/getISO6", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getISO6andler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("ISO6", info.getIso6());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	
	
	@RequestMapping(value = "/getISO14", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getISO14Handler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("ISO14", info.getIso14());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	
	@RequestMapping(value = "/getNAS25", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getNAS25Handler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("NAS2-5", info.getNas2_5());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	
	
	@RequestMapping(value = "/getNAS515", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getNAS515Handler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("NAS5-15", info.getNas5_15());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	@RequestMapping(value = "/getNAS1525", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getNAS1525Handler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("NAS15-25", info.getNas15_25());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	
	@RequestMapping(value = "/getNAS25Plus", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getNAS25PlusHandler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("NAS25+", info.getNas25_());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	
	@RequestMapping(value = "/getMAX", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getMAX() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("MAX+", info.getMax_());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	
	@RequestMapping(value = "/getDrive", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getDriveHandler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("Drive", info.getDrive());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
 	
	
	@RequestMapping(value = "/getTemp", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getTempHandler() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("Temp", info.getTemp());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	@RequestMapping(value = "/getSat", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getSat() throws Exception {
		logger.debug("IN GET getInfo");
		ResponseEntity<String> responseEntity = null;
		
				
		try {
			int indexVal=0;
			Rowindex index=null;
			List<Rowindex> indexList=consumerInstrumentServiceImpl.getIndexVals();
			if(indexList!=null && !indexList.isEmpty()){
				index=indexList.get(0);
				indexVal=Integer.parseInt(index.getRowindexcol());
					
			
				JSONObject json=null;	
					List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
		               if(infoList!=null && !infoList.isEmpty()){
		            	   if(infoList.size()>indexVal){
							 Info info=infoList.get(indexVal);
							   json = new JSONObject();
							   json.put("Sat", info.getSat());
							       		indexVal=indexVal+1;
							    		index.setRowindexcol(String.valueOf(indexVal));
							    		consumerInstrumentServiceImpl.update(index);
		               		}else{
		               				index.setRowindexcol("0");
						    		consumerInstrumentServiceImpl.update(index);
		               		}	
						}
						
				if(json!=null){
					String response = json.toString();
					responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
				}else{
					responseEntity = new ResponseEntity<String>("list over", HttpStatus.EXPECTATION_FAILED);
				}
			}else{
				responseEntity = new ResponseEntity<String>("Index not defined", HttpStatus.BAD_REQUEST);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
		 	responseEntity = new ResponseEntity<String>(e.getHttpStatus());
		}
		
		return responseEntity;
	}
	
	/*@RequestMapping(value = "/getTemp", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<String> getTempHandler() throws Exception {
		logger.debug("IN GET getTemp");
		ResponseEntity<String> responseEntity = null;
		JSONArray jsonarray = new JSONArray();
				
		try {		
			List<Info> infoList=consumerInstrumentServiceImpl.getInfo();
			if(infoList!=null && !infoList.isEmpty()){
				for(Info info : infoList){
					JSONObject rObj = new JSONObject();
					rObj.put("Temp", info.getTemp());
					jsonarray.put(rObj);
				}
				String response = jsonarray.toString();
				responseEntity = new ResponseEntity<String>(response, HttpStatus.OK);
			}else{
				
				responseEntity = new ResponseEntity<String>(HttpStatus.EXPECTATION_FAILED);
			}
			
		}catch(MightyAppException e) {
			logger.errorException(e, e.getMessage());
			String response = JsonUtil.objToJson(jsonarray);
			responseEntity = new ResponseEntity<String>(response, e.getHttpStatus());
		}
		logger.debug("JSonarray",jsonarray);
		return responseEntity;
	}*/
	
}
	