package mx.isban.at.jms.spring;

import javax.jms.Destination;
import javax.jms.JMSException;
import javax.jms.Message;
import javax.jms.Session;

import org.springframework.jms.core.JmsTemplate;
import org.springframework.jms.core.MessageCreator;

public class SpringJmsProducer {
	private JmsTemplate jmsTemplate;
	private Destination destination;

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

	public void sendMessage(final String msg) {
		System.out.println("Producer sends " + msg);
		if (destination == null) {
			jmsTemplate.send(new MessageCreator() {
				public Message createMessage(Session session)
						throws JMSException {
					Message message = session.createTextMessage(msg);
					message.setStringProperty("Key1", "Value1");
					message.setStringProperty("Key2", "Value2");
					message.setStringProperty("Key3", "Value3");
					return message;
				}
			});
		} else {
			jmsTemplate.send(destination, new MessageCreator() {
				public Message createMessage(Session session)
						throws JMSException {
					return session.createTextMessage(msg);
				}
			});
		}
	}
}
