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

import hw.common.service.CmmParamVO;
import hw.sysmng.service.UserMngService;
import hw.sysmng.service.UserVO;
import lombok.RequiredArgsConstructor;

/**
 * @Class Name : UserMngServiceImpl.java
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

@Service("UserMngService")
@RequiredArgsConstructor
public class UserMngServiceImpl extends EgovAbstractServiceImpl implements UserMngService {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserMngServiceImpl.class);

	/** UserMngDAO */
	private final UserMngMapper userMngDAO;

	/** ID Generation */
	private final EgovIdGnrService egovIdGnrService;

	/**
	 * 로그인한 사용자 정보 조회
	 */
	@Override
	public UserVO selectLoginUserInfo(HashMap paramMap) throws Exception{
		return userMngDAO.selectLoginUserInfo(paramMap);
	}

}
