package sis.action;

import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import sis.db.DBhandler;
import sis.model.FriendModel;

import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

public class BirthPlace extends ActionSupport implements  SessionAware,ModelDriven<FriendModel>{

	FriendModel fm=new FriendModel();
	private static final long serialVersionUID = 1L;
	public ArrayList<FriendModel> name=new ArrayList<FriendModel>(); 
	public String execute() throws FileNotFoundException{
		
		DBhandler retrive = new DBhandler();
		
		System.out.println("intseres: intr in"+fm.getInterest());
		name=retrive.birth(fm.getPlace());
		retrive.addrequst(fm.getS_ID());
		
		return"birth";
	}
	
	public String addfnd()throws FileNotFoundException{
      DBhandler retrive = new DBhandler();
		
		System.out.println("intseres: intr in"+fm.getInterest());
		System.out.println("intseres: intr in"+fm.getS_ID());
		retrive.addrequst(fm.getS_ID());
		
		return "birth";
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
