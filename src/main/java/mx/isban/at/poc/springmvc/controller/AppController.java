package mx.isban.at.poc.springmvc.controller;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import mx.isban.at.poc.bigdata.impala.jdbc.ImpalaJDBCHandler;
import mx.isban.at.poc.bigdata.oozie.jms.HandleRequestforJMS;

@Controller
@RequestMapping("/")
public class AppController {
	
	private static final Logger LOG = LoggerFactory.getLogger(AppController.class);

	@Autowired
	HandleRequestforJMS handler;
	
	@Autowired
	ImpalaJDBCHandler impalaHandler;

	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String homePage(ModelMap model) {
		return "home";
	}

	@RequestMapping(value = { "/sendMessage" }, method = RequestMethod.POST)
	public String oozieJmsPage(@RequestParam Map<String, String> allRequestParams, ModelMap model) {
		// handle request
		String id = handler.sendMessage(allRequestParams);
		LOG.debug("Message ID: " + id);
		return "ooziejms";
	}
	
	@RequestMapping(value = { "/impalaSQLPage" }, method = RequestMethod.GET)
	public String impalaSQLPage(ModelMap model) {
		return "impalaQuery";
	}

	@RequestMapping(value = { "/impalaQuery" }, method = RequestMethod.POST)
	public String impalaQueryPage(@RequestParam("SQLQuery") String sqlQuery,
			@RequestParam("limit") String limit,
			ModelMap model) {
		// handle request
		LOG.debug("SQL Sentence: " + sqlQuery);
		LOG.debug("Rows Limit: " + limit);
		List<Map<String, Object>> result = impalaHandler.executeQuery(sqlQuery + " LIMIT " + limit);
		for(Map<String,Object> r : result) {
			// Java 8 only, forEach and Lambda
			r.forEach((k, v) -> LOG.debug("Key : " + k + " Value : " + v));
		}
		return "impalaQuery";
	}

	@RequestMapping(value = { "/ooziejms" }, method = RequestMethod.GET)
	public String sendMessage(ModelMap model) {
		return "ooziejms";
	}

	@RequestMapping(value = { "/contactus" }, method = RequestMethod.GET)
	public String contactUsPage(ModelMap model) {
		return "contactus";
	}
}