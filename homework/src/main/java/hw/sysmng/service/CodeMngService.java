package hw.sysmng.service;

import java.util.HashMap;
import java.util.List;

/**
 * @Class Name : CodeMngService.java
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
public interface CodeMngService {

	/**
	 * 메뉴 조회(단건)
	 */
	public List<CodeVO> selectCodeList(HashMap paramMap) throws Exception;

	/**
	 * 메뉴 조회(다건)
	 */
	public HashMap<String,List<CodeVO>> selectCodeList(List<HashMap> paramList) throws Exception;
}
