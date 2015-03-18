package sis.model;

import java.io.File;

import javax.servlet.http.HttpServletRequest;

public class AddStudentModel {

	private String Enroll, Name, Lastname, Contact, Address, Dob, email;
	private File photo;
	private String photoContentType;
	private String Password;
	// String interest;
public String birth;
	public String getBirth() {
	return birth;
}

public void setBirth(String birth) {
	this.birth = birth;
}

	private String photoFileName;
	private HttpServletRequest servletRequest;
	String destpath = "//home/soul/OOAD/DSIS/WebContent/image";

	public String getEnroll() {
		return Enroll;
	}

	public void setEnroll(String enroll) {
		Enroll = enroll;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getContact() {
		return Contact;
	}

	public void setContact(String contact) {
		Contact = contact;
	}

	public String getLastname() {
		return Lastname;
	}

	public void setLastname(String lastname) {
		Lastname = lastname;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getDob() {
		return Dob;
	}

	public void setDob(String dob) {
		Dob = dob;
	}

	
	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public File getPhoto() {
		return photo;
	}

	public void setPhoto(File photo) {
		this.photo = photo;
	}

	public String getPhotoContentType() {
		return photoContentType;
	}

	public void setPhotoContentType(String photoContentType) {
		this.photoContentType = photoContentType;
	}

	public HttpServletRequest getServletRequest() {
		return servletRequest;
	}

	public void setServletRequest(HttpServletRequest servletRequest) {
		this.servletRequest = servletRequest;
	}

	public String getDestpath() {
		return destpath;
	}

	public void setDestpath(String destpath) {
		this.destpath = destpath;
	}

	public String getPhotoFileName() {
		return photoFileName;
	}

	public void setPhotoFileName(String photoFileName) {
		this.photoFileName = photoFileName;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
	}

}
