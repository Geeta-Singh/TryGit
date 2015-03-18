package sis.action;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import sis.db.DBhandler;
import sis.model.FriendModel;
//import sis.model.GradeModel;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class Report extends ActionSupport implements  SessionAware,ModelDriven<FriendModel>{
	/**
	 * 
	 */
	FriendModel fm=new FriendModel();
	private static final long serialVersionUID = 1L;
	public ArrayList<FriendModel> name=new ArrayList<FriendModel>(); 
	public String execute() throws FileNotFoundException{
		
		DBhandler retrive = new DBhandler();
		intre();
		System.out.println("intseres: intr in"+fm.getInterest());
		
		name=retrive.report(fm.getInterest());
		
		return"report";
	}
	
	public String intre()throws FileNotFoundException{
		
		DBhandler intr = new DBhandler();
		System.out.println("intseres:"+fm.getInterest());
		intr.tokenIntrst();System.out.println("sussss");
		return "intr";
	}
	
	
	
	
	
	
	
	@Override
	public FriendModel getModel() {
		// TODO Auto-generated method stub
		return fm;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		// TODO Auto-generated method stub
		
	}

	
	
	
	
	
	
	
	
	
	
	
	

}
