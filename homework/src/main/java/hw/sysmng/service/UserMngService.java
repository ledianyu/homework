package hw.sysmng.service;

import java.util.HashMap;

/**
 * @Class Name : UserMngService.java
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
public interface UserMngService {

	/**
	 * 로그인한 사용자 정보 조회
	 */
	public UserVO selectLoginUserInfo(HashMap paramMap) throws Exception;
}
