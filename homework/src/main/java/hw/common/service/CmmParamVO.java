package hw.common.service;

/**
 * @Class Name : CmmParamVO.java
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
public class CmmParamVO {

	private static final long serialVersionUID = 1L;

	private String loginUserId;			/** 로그인 유저ID **/
	private String logInPassword;		/** 로그인 패스워드 **/
	private String loginUserGroupId;	/** 로그인 유저 그룹ID **/	
	private String state;				/** 상태관리 **/
	private String roleYn;				/** 권한체크여부 **/


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

	public String getRoleYn() {
		return roleYn;
	}

	public void setRoleYn(String roleYn) {
		this.roleYn = roleYn;
	}

}
