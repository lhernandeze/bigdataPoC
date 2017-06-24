package mx.isban.at.jms.spring;

import java.net.URISyntaxException;
import java.util.HashMap;
import java.util.Map;

import org.springframework.context.support.ClassPathXmlApplicationContext;

import mx.isban.at.jms.JmsMessageSender;

public class SpringJmsTemplateExample {
	public static void main(String[] args) throws URISyntaxException, Exception {
		ClassPathXmlApplicationContext context = new ClassPathXmlApplicationContext(
				"spring-jms-amq-context.xml"); 

		try {
			
			
			JmsMessageSender jms = (JmsMessageSender) context.getBean("jmsMessageSender");
			Map<String, String> msgProperties = new HashMap<String,String>();
			msgProperties.put("k1", "v1");
			jms.send("Some Text in Map", msgProperties);
			
			
			//SpringJmsProducer springJmsProducer = (SpringJmsProducer) context
			//		.getBean("springJmsProducer");
			
			//springJmsProducer.sendMessage("SomeTask Example With Properties");

			
			SpringJmsConsumer springJmsConsumer = (SpringJmsConsumer) context
					.getBean("springJmsConsumer");
			System.out.println("Consumer receives " + springJmsConsumer.receiveMessage());
			
		} finally {
			context.close();
		}
	}
}
