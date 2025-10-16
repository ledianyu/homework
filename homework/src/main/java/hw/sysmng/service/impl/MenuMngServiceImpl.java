/*
 * Copyright 2008-2009 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package hw.sysmng.service.impl;

import java.util.HashMap;
import java.util.List;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.fdl.idgnr.EgovIdGnrService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import hw.sysmng.service.MenuMngService;
import hw.sysmng.service.MenuVO;
import lombok.RequiredArgsConstructor;

/**
 * @Class Name : MenuMngServiceImpl.java
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

@Service("MenuMngService")
@RequiredArgsConstructor
public class MenuMngServiceImpl extends EgovAbstractServiceImpl implements MenuMngService {

	private static final Logger LOGGER = LoggerFactory.getLogger(MenuMngServiceImpl.class);

	/** MenuMngDAO */
	private final MenuMngMapper menuMngDAO;

	/** ID Generation */
	private final EgovIdGnrService egovIdGnrService;

	/**
	 * 메뉴 조회
	 */
	@Override
	public List<MenuVO> selectMenuList(HashMap paramMap) throws Exception{
		return menuMngDAO.selectMenuList(paramMap);
	}

}
