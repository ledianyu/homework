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

import hw.sysmng.service.CodeMngService;
import hw.sysmng.service.CodeVO;
import lombok.RequiredArgsConstructor;

/**
 * @Class Name : CodeMngServiceImpl.java
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

@Service("CodeMngService")
@RequiredArgsConstructor
public class CodeMngServiceImpl extends EgovAbstractServiceImpl implements CodeMngService {

	private static final Logger LOGGER = LoggerFactory.getLogger(CodeMngServiceImpl.class);

	/** CodeMngDAO */
	private final CodeMngMapper codeMngDAO;

	/** ID Generation */
	private final EgovIdGnrService egovIdGnrService;

	/**
	 * 메뉴 조회(단건)
	 */
	@Override
	public List<CodeVO> selectCodeList(HashMap paramMap) throws Exception{
		return codeMngDAO.selectCodeList(paramMap);
	}

	/**
	 * 메뉴 조회(다건)
	 */
	@Override
	public HashMap<String,List<CodeVO>> selectCodeList(List<HashMap> paramList) throws Exception{
		
		HashMap<String,List<CodeVO>> rtnList = new HashMap<String,List<CodeVO>>();
		
		for (HashMap paramMap : paramList) {
			String codeKey = (String) paramMap.get("higherCode");
			rtnList.put(codeKey, codeMngDAO.selectCodeList(paramMap));
		}
		
		return rtnList;
	}

}
