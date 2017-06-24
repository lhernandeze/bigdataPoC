package mx.isban.at.jms;

import java.util.Map;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;

public class JmsMessageSender {

	private JmsTemplate jmsTemplate;

	private Destination destination;

	private String id = null;

	public JmsMessageSender() {
	}

	/**
	 * send text to default destination
	 * 
	 * @param text
	 */
	public void send(final String text) {

		this.jmsTemplate.send(new MessageCreator() {
			@Override
			public Message createMessage(Session session) throws JMSException {
				Message message = session.createTextMessage(text);
				return message;
			}
		});
	}
	
	/**
	 * send text to default destination and parameters
	 * 
	 * @param text
	 */
	public void send(final String text, Map<String, String> msgProperties) {

		this.jmsTemplate.send(new MessageCreator() {
			@Override
			public Message createMessage(Session session) throws JMSException {
				Message message = session.createTextMessage(text);
				for (Map.Entry<String, String> entry : msgProperties.entrySet()) {
					System.out.println("Msg K,V [" + entry.getKey() + "]=[" + entry.getValue()+"]");
					message.setStringProperty(entry.getKey(), entry.getValue());
				}
				setId(message.getJMSCorrelationID());
				return message;
			}
		});
	}

	/**
	 * Simplify the send by using convertAndSend
	 * 
	 * @param text
	 */
	public void sendText(final String text) {
		this.jmsTemplate.convertAndSend(text);
	}


	private void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return this.id;
	}
	
	public JmsTemplate getJmsTemplate() {
		return jmsTemplate;
	}

	public void setJmsTemplate(JmsTemplate jmsTemplate) {
		this.jmsTemplate = jmsTemplate;
	}

	public Destination getDestination() {
		return destination;
	}

	public void setDestination(Destination destination) {
		this.destination = destination;
	}

}
