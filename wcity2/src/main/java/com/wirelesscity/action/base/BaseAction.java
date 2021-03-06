package com.wirelesscity.action.base;

import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.struts2.ServletActionContext;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class BaseAction extends ActionSupport {

	private static final long serialVersionUID = -8843362213171564179L;

	public Map<String, Object> resultMap = new HashMap<String, Object>();

	public Logger log = LoggerFactory.getLogger(this.getClass());

	protected String errMsg;

	/**
	 * Convenience method to get the request
	 * 
	 * @return current request
	 */
	protected HttpServletRequest getRequest() {
		return ServletActionContext.getRequest();
	}

	/**
	 * Convenience method to get the parameter
	 * 
	 * @return current request
	 */
	protected String getParameter(String key) {
		return getRequest().getParameter(key);
	}

	/**
	 * Convenience method to get the response
	 * 
	 * @return current response
	 */
	protected HttpServletResponse getResponse() {
		return ServletActionContext.getResponse();
	}

	/**
	 * Convenience method to get the session. This will create a session if one
	 * doesn't exist.
	 * 
	 * @return the session from the request (request.getSession()).
	 */
	protected HttpSession getSession() {
		return getRequest().getSession();
	}

//	protected Long getMeetingIdFromSession() {
//		Object o = getSession().getAttribute("_portal_meeting_");
//		if (o != null) {
//			Meeting meeting = (Meeting) o;
//			if (meeting != null) {
//				return meeting.getId();
//			}
//		} else {
//			Object obj = getSession().getAttribute(SessionKeeper.CURRENT_MEETING_ID);
//			if (obj != null) {
//				return (Long) obj;
//			}
//		}
//
//		return null;
//	}











	protected Object getFromSession(String key) {
		return getSession().getAttribute(key);
	}

	protected String getStringFromSession(String key) {
		Object get = getSession().getAttribute(key);
		return get == null ? null : get.toString();
	}

	protected void putToSession(String key, Object value) {
		getSession().setAttribute(key, value);
	}

	/**
	 * 获取ActionContext对象
	 * @return
	 */
	public ActionContext getContext(){
		return ActionContext.getContext();
	}

	
	public String getErrMsg() {
		return errMsg;
	}

	public void setErrMsg(String errMsg) {
		this.errMsg = errMsg;
	}

	/**
	 * 把指定的数据放入struts2的value stack中
	 */
	public void setAttribute(String key, Object value) {
		ActionContext.getContext().getValueStack().set(key, value);
	}

}
