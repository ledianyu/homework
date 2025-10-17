package hw.common.service;

/**
 * @Class Name : CommonVO.java
 * @Description : 
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2025.09.19   msyu        최초생성
 *
 * @author msyu
 * @since 2025.09.19
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class CommonVO {

	private static final long serialVersionUID = 1L;

	private String loginUserId;			/** 로그인 유저ID **/
	private String logInPassword;		/** 로그인 패스워드 **/
	private String loginUserGroupId;	/** 로그인 유저 그룹ID **/
	
	private String state;				/** 상태관리 **/
	private String iUserId;				/** 생성자ID **/
	private String iTime;				/** 생성시각 **/
	private String uUserId;				/** 처리자ID **/
	private String uTime;				/** 처리시간 **/
	private String uLog;				/** 처리로그 **/


	public String getLoginUserId() {
		return loginUserId;
	}

	public void setLoginUserId(String loginUserId) {
		this.loginUserId = loginUserId;
	}

	public String getLogInPassword() {
		return logInPassword;
	}

	public void setLogInPassword(String logInPassword) {
		this.logInPassword = logInPassword;
	}	
	
	public String getLoginUserGroupId() {
		return loginUserGroupId;
	}

	public void setLoginUserGroupId(String loginUserGroupId) {
		this.loginUserGroupId = loginUserGroupId;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getiUserId() {
		return iUserId;
	}

	public void setiUserId(String iUserId) {
		this.iUserId = iUserId;
	}

	public String getiTime() {
		return iTime;
	}

	public void setiTime(String iTime) {
		this.iTime = iTime;
	}

	public String getuUserId() {
		return uUserId;
	}

	public void setuUserId(String uUserId) {
		this.uUserId = uUserId;
	}

	public String getuTime() {
		return uTime;
	}

	public void setuTime(String uTime) {
		this.uTime = uTime;
	}

	public String getuLog() {
		return uLog;
	}

	public void setuLog(String uLog) {
		this.uLog = uLog;
	}

}
