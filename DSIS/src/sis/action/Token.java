package sis.action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import sis.model.FriendModel;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Token extends ActionSupport implements  SessionAware,ModelDriven<Token> {

	Token tm=new Token();
	
	
	
	
	
	
	
	
	
	@Override
	public Token getModel() {
		// TODO Auto-generated method stub
		return tm;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		
	}

}
