package com.shengsiyuan.action.ognl;

import java.util.Map;

import org.apache.struts2.interceptor.ApplicationAware;
import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class OgnlAction extends ActionSupport implements RequestAware, SessionAware, ApplicationAware {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String username;
	
	private String password;

	private Map<String, Object> requestMap;
	
	private Map<String, Object> sessionMap;
	
	private Map<String, Object> applicationMap;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@Override
	public void setRequest(Map<String, Object> arg0) {
		this.requestMap = arg0;
	}

	@Override
	public void setSession(Map<String, Object> arg0) {
		this.sessionMap = arg0;
	}

	@Override
	public void setApplication(Map<String, Object> arg0) {
		this.applicationMap = arg0;
	}

	@Override
	public String execute() throws Exception {
		return SUCCESS;
	}
}
