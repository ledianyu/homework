package hw.sysmng.service;

import hw.common.service.CommonVO;

/**
 * @Class Name : UserVO.java
 * @Description : 
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2025.10.07   msyu        최초생성
 *
 * @author msyu
 * @since 2025.10.07
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */
public class UserVO extends CommonVO{

	private static final long serialVersionUID = 1L;
	
	private String userId;			/** 사용자ID **/
	private String kname;			/** 성명 **/
	private String password;		/** 비밀번호 **/
	private String schoolCd;		/** 학교유형코드 **/
	private String gradeCd;			/** 학년코드 **/
	private String groupId;			/** 그룹ID **/
	
	
	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getKname() {
		return kname;
	}

	public void setKname(String kname) {
		this.kname = kname;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getSchoolCd() {
		return schoolCd;
	}

	public void setSchoolCd(String schoolCd) {
		this.schoolCd = schoolCd;
	}

	public String getGradeCd() {
		return gradeCd;
	}

	public void setGradeCd(String gradeCd) {
		this.gradeCd = gradeCd;
	}

	public String getGroupId() {
		return groupId;
	}

	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}

}
