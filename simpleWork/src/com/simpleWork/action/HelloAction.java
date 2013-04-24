package com.simpleWork.action;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

import com.simpleWork.ibatis.dao.UserDaoImpl;

public class HelloAction implements Controller {

	private String helloWorld; // ���������ڻ�ȡ�����ļ��е�helloWorld����
	private String viewPage; // ���ڻ�ȡ�����ļ��е�viewPage����

	Logger logger=Logger.getLogger(this.getClass());
	public String getHelloWorld() {
		return helloWorld;
	}

	public void setHelloWorld(String helloWorld) {
		this.helloWorld = helloWorld;
	}

	public String getViewPage() {
		return viewPage;
	}

	public void setViewPage(String viewPage) {
		this.viewPage = viewPage;
	}

	public ModelAndView handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		
		Map<String, Object> model = new HashMap<String, Object>();
		String t1=request.getParameter("helloWorld");
		model.put("helloWorld", t1); // ��helloWorld���Դ���model��
		
		UserDaoImpl userDaoImpl=new UserDaoImpl();
		HashMap<String,Object> parameterMap=new HashMap<String, Object>();
		parameterMap.put("staffName", t1);
		parameterMap.put("staffId", "10395");
		
		
		List lstUser=userDaoImpl.getUserList(parameterMap);
		
	    model.put("lstUser", lstUser);
		return new ModelAndView(getViewPage(), model); // ����getViewPage��ȡҪ���ص�ҳ��
		

	}

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
