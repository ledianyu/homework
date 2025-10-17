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
package hw.common.service.impl;

import org.egovframe.rte.fdl.cmmn.EgovAbstractServiceImpl;
import org.egovframe.rte.fdl.idgnr.EgovIdGnrService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;

import hw.common.service.CommonService;
import lombok.RequiredArgsConstructor;

/**
 * @Class Name : CommonServiceImpl.java
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

@Service("CommonService")
@RequiredArgsConstructor
public class CommonServiceImpl extends EgovAbstractServiceImpl implements CommonService {

	private static final Logger LOGGER = LoggerFactory.getLogger(CommonServiceImpl.class);

	/** SampleDAO */
	private final CommonMapper commonDAO;

	/** ID Generation */
	private final EgovIdGnrService egovIdGnrService;

	/**
	 * 테스트 조회
	 */
	@Override
	public int selectUserCount() throws Exception{
		return commonDAO.selectUserCount();
	}

}
