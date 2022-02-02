package services;

import java.util.List;

import database.MessageConnector;
import models.Message;

public class MessageService {
	private MessageConnector messageConnector ;
	
	public MessageService() {
		this.messageConnector = new MessageConnector();
	}
	
	public boolean createMessage(Message _message) {
		return messageConnector.createMessage(_message);
	}
	
	public List<Message> readAllMessages() {
		return messageConnector.getAllMessages();
	}
	
	public Message readMessage(int id) {
		return messageConnector.getMessage(id);
	}
	
	public boolean updateMessage(Message _message) {
		return messageConnector.updateMessage(_message);
	}
	
	public boolean deleteMessage(int id) {
		return messageConnector.deleteMessage(id);
	}

}
