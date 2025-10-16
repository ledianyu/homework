package hw.sysmng.service;

import hw.common.service.CommonVO;

/**
 * @Class Name : CodeVO.java
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
public class CodeVO extends CommonVO{

	private static final long serialVersionUID = 1L;
	
	private String code;			/** 코드 **/
	private String higherCode;		/** 상위코드 **/
	private String knane;			/** 한글명 **/
	private String ename;			/** 영문명 **/
	private String kdesc;			/** 한글내용 **/
	private String depth;			/** 단계 **/
	private String sort;			/** 순서 **/
	
	private CodeVO code2List;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getHigherCode() {
		return higherCode;
	}

	public void setHigherCode(String higherCode) {
		this.higherCode = higherCode;
	}

	public String getKnane() {
		return knane;
	}

	public void setKnane(String knane) {
		this.knane = knane;
	}

	public String getEname() {
		return ename;
	}

	public void setEname(String ename) {
		this.ename = ename;
	}

	public String getKdesc() {
		return kdesc;
	}

	public void setKdesc(String kdesc) {
		this.kdesc = kdesc;
	}

	public String getDepth() {
		return depth;
	}

	public void setDepth(String depth) {
		this.depth = depth;
	}

	public String getSort() {
		return sort;
	}

	public void setSort(String sort) {
		this.sort = sort;
	}

	public CodeVO getCode2List() {
		return code2List;
	}

	public void setCode2List(CodeVO code2List) {
		this.code2List = code2List;
	}

}
