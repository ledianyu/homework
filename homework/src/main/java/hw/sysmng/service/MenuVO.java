package hw.sysmng.service;

import java.util.List;

import hw.common.service.CommonVO;

/**
 * @Class Name : MenuVO.java
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
public class MenuVO extends CommonVO{

	private static final long serialVersionUID = 1L;
	
	private String menuId;			/** 메뉴ID **/
	private String kname;           /** 한글명 **/
	private String kdesc;           /** 한글내용 **/
	private String depth;           /** 단계 **/
	private String sort;            /** 순서 **/
	private String higherId;        /** 상위ID **/
	private String programUrl;      /** 프로그램URL **/
	private String menuType;        /** 메뉴유형 **/
	private String icon;            /** 아이콘 **/
	private String menuPath;        /** 메뉴경로 **/


	private List menu2List;         /** 하위메뉴 **/

	public String getMenuId() {
		return menuId;
	}

	public void setMenuId(String menuId) {
		this.menuId = menuId;
	}

	public String getKname() {
		return kname;
	}

	public void setKname(String kname) {
		this.kname = kname;
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

	public String getHigherId() {
		return higherId;
	}

	public void setHigherId(String higherId) {
		this.higherId = higherId;
	}

	public String getProgramUrl() {
		return programUrl;
	}

	public void setProgramUrl(String programUrl) {
		this.programUrl = programUrl;
	}

	public String getMenuType() {
		return menuType;
	}

	public void setMenuType(String menuType) {
		this.menuType = menuType;
	}

	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public List getMenu2List() {
		return menu2List;
	}

	public void setMenu2List(List menu2List) {
		this.menu2List = menu2List;
	}

	public String getMenuPath() {
		return menuPath;
	}

	public void setMenuPath(String menuPath) {
		this.menuPath = menuPath;
	}

}
