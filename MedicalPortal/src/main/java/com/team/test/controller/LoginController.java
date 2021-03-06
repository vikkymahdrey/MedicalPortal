package com.team.test.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.team.test.domain.Info;
import com.team.test.domain.Waterconsumption;
import com.team.test.logger.MightyLogger;
import com.team.test.service.ConsumerInstrumentService;
import com.team.test.service.LoginService;

@Controller
public class LoginController {
	private static final MightyLogger logger = MightyLogger.getLogger(LoginController.class);
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private ConsumerInstrumentService consumerInstrumentService;
	

	
	
	/*@RequestMapping(value= {"/"})
	public String defaultURL(){
		logger.info(" React App login request");
		return "react";
	}*/
	
	/*@RequestMapping(value= {"/"})
	public String defaultURL(){
		logger.info(" React App login request");
		return "reactjs";
	}*/
	
	@RequestMapping(value= {"/dashboard1"})
	public String dashboard(){
		logger.debug("Dashboard");
		return "dashboard";
	}
	
	@RequestMapping(value= {"/"})
	public String defaultURL(){
		logger.info(" React App login request");
		return "SignUp";
	}
	
	@RequestMapping(value= {"/test"})
	public String testReactJSURL(){
		logger.info(" React App login request");
		return "react";
	}
	
	@RequestMapping(value= {"/reactLogin"},method=RequestMethod.POST)
	public String reactHandler(){
		logger.info(" React Application login request");
		return "react";
	}
	
	
	
	@RequestMapping(value= {"/fetchAllergy"},method=RequestMethod.GET)
	public String fetchAllergiesHandler(){
		logger.info(" React Application for view Allergies request");
		return "allergies1";
	}
	
	@RequestMapping(value= {"/fetchAllergies"},method=RequestMethod.GET)
	public String fetchAllergies(){
		logger.info(" React Application for view Allergies request");
		return "allergies";
	}
	
	
	@RequestMapping(value= {"/getAllergy"},method=RequestMethod.GET)
	public String getAllergiesHandller(){
		logger.info(" React Application for view Allergies request");
		return "allergies2";
	}
	
	@RequestMapping(value= {"/getMedical"},method=RequestMethod.GET)
	public String getMedicalHandller(){
		logger.info(" React Application for view Allergies request");
		return "medication2";
	}
		
	@RequestMapping(value= {"/fetchMedications"},method=RequestMethod.GET)
	public String fetchMedicationHandler(){
		logger.info(" React Application for view Medicatin request");
		return "medication1";
	}
	
	@RequestMapping(value= {"/fetchMedication"},method=RequestMethod.GET)
	public String fetchMedication(){
		logger.info(" React Application for view Medicatin request");
		return "medication";
	}
	
	@RequestMapping(value= {"/inValid"})
	public String inValidCredentials(){
		return "index";
	}
	
	@RequestMapping(value= {"/forgotPassword"})
	public String forgetPasswordHandler(){
		return "forgotPassword";
	}
	
	
	
	
	
		 @RequestMapping(value= {"/adminHome"}, method=RequestMethod.GET)
		 public ModelAndView home(HttpServletRequest request, HttpServletResponse response) throws Exception{
		 	      	return new ModelAndView("AdminView");
		    	
		 }
		 
		 
		 
		 
		 @RequestMapping(value= {"/adminView1"}, method=RequestMethod.GET)
		 public ModelAndView demoHandler(HttpServletRequest request, HttpServletResponse response) throws Exception{
		 	      	return new ModelAndView("AdminView1");
		    	
		}
		 
		 @RequestMapping(value= {"/adminView"}, method=RequestMethod.GET)
		 public ModelAndView adminViews(HttpServletRequest request, HttpServletResponse response) throws Exception{
		 	      	return new ModelAndView("AdminViews");
		    	
		}
		 
		 	@RequestMapping(value= {"/logout"})
			public String goToLogout(HttpServletRequest request,HttpServletResponse response,Map<String,Object> map){
				logger.debug("In gotoLogout Page......");
					HttpSession session = request.getSession(true);
						session.invalidate();
							response.setHeader("Cache-Control",	"no-cache, no-store, must-revalidate");
								response.setHeader("Pragma", "co-cache");
									response.setDateHeader("Expires", 0);
										return "redirect:/";
			}
		 	
		 	
		 	@RequestMapping(value= {"/dashboard"}, method=RequestMethod.GET)
			 public String dashboardHandler(Map<String,Object> map) throws Exception{
		 		logger.debug("Inside unizen dashboard");
		 		
		 		List<Info> infoList=consumerInstrumentService.getInfo();
				 		 if(infoList!=null && !infoList.isEmpty()){
				 			Info info=infoList.get(infoList.size()-1);
				 				map.put("info",info);
				 		 }
				 		 
			    List<Waterconsumption> waterconsumed=consumerInstrumentService.getWaterConsumed();
			    				map.put("waterconsumed",waterconsumed); 
			    				logger.debug("Size of waterconsumed",waterconsumed.size());
			    				
			    				
			 	return "dashboard";
			    	
			}	
		 	
		 	
		 	

			
}
