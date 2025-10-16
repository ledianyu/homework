package hw.sysmng.service;

import java.util.HashMap;
import java.util.List;

/**
 * @Class Name : MenuMngService.java
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
public interface MenuMngService {

	/**
	 * 메뉴 조회
	 */
	public List<MenuVO> selectMenuList(HashMap paramMap) throws Exception;
}
