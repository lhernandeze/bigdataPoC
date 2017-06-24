package mx.isban.at.poc.bigdata.oozie.jms;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import mx.isban.at.jms.JmsMessageSender;

public class HandleRequestforJMS {

	private static final String JMS_PROPERTY_KEY = "JMSPropKey_";

	private static final String JMS_PROPERTY_VALUE = "JMSPropValue_";

	private static final String JMS_DESTINATION = "JMSDestination";

	private static final String JMS_MESSAGE = "JMSText";

	@Autowired
	private JmsMessageSender jms;

	public HandleRequestforJMS() {
		System.out.println("Starting HandleRequestforJMS");
	}

	public String sendMessage(Map<String, String> parameters) {
		String destination = null;
		String txtMessage = null;
		System.out.println("********** Starting PoC of JMS Message **********");
		// Java 8 only, forEach and Lambda
		parameters.forEach((k, v) -> System.out.println("Parameters -> Key : " + k + " Value : " + v));
		System.out.println("JMS Object: " + jms);
		destination = parameters.get(JMS_DESTINATION);
		txtMessage = parameters.get(JMS_MESSAGE);
		System.out.println("Message Destination: [" + destination + "]");
		System.out.println("Text Message: [" + txtMessage + "]");
		Map<String, String> msgPropertyKey = new HashMap<String, String>();
		Map<String, String> msgPropertyValue = new HashMap<String, String>();
		Map<String, String> msgProperties = new HashMap<String, String>();
		for (Map.Entry<String, String> entry : parameters.entrySet()) {
			if (entry.getKey().startsWith(JMS_PROPERTY_KEY)) {
				System.out.println("Field Property Key: [" + entry.getKey() + "]=[" + entry.getValue() + "]");
				msgPropertyKey.put(entry.getKey(), entry.getValue());
			} else if (entry.getKey().startsWith(JMS_PROPERTY_VALUE)) {
				System.out.println("Field Property Value: [" + entry.getKey() + "]=[" + entry.getValue() + "]");
				msgPropertyValue.put(entry.getKey(), entry.getValue());
			}
		}
		// iterate maps and build Message Property from (K,V)
		for (Map.Entry<String, String> entryKey : msgPropertyKey.entrySet()) {
			for (Map.Entry<String, String> entryValue : msgPropertyValue.entrySet()) {
				if (entryValue.getKey().endsWith(entryKey.getValue())) {
					System.out.println(
							"Message Property Key: [" + entryKey.getValue() + "]=[" + entryValue.getValue() + "]");
					msgProperties.put(entryKey.getValue(), entryValue.getValue());
				}
			}
		}
		jms.send(txtMessage, msgProperties);
		System.out.println("********** Ending PoC of JMS Message **********");
		return jms.getId();
	}

}
