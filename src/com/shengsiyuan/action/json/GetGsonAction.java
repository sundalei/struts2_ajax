package com.shengsiyuan.action.json;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

import com.google.gson.Gson;
import com.opensymphony.xwork2.ActionSupport;
import com.shengsiyuan.action.xml.People;

public class GetGsonAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	private String name;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public String execute() throws Exception {
		People people1 = new People();
		people1.setId(1);
		people1.setName("zhangsan");
		people1.setAge(30);
		people1.setAddress("beijing");
		
		People people2 = new People();
		people2.setId(2);
		people2.setName("lisi");
		people2.setAge(50);
		people2.setAddress("tianjin");
		
		String result = null;
		Gson gson = new Gson();
		
		if("zhangsan".equals(name)) {
			result = gson.toJson(people1);
		} else {
			result = gson.toJson(people2);
		}
		
		
		HttpServletResponse response = ServletActionContext.getResponse();
		
		response.setContentType("application/json; charset=utf-8");
		response.setHeader("Cache-Control","no-cache");
		
		PrintWriter out = response.getWriter();
		
		out.print(result);
		
		out.flush();
		out.close();
		
		return null;
	}
}
