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
package hw.sysmng.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springmodules.validation.commons.DefaultBeanValidator;

import hw.basicdatamng.web.QuestionMngController;
import lombok.RequiredArgsConstructor;

/**
 * @Class Name : RoleMenuMngController.java
 * @Description : 
 * @Modification Information
 * @
 * @  수정일      수정자              수정내용
 * @ ---------   ---------   -------------------------------
 * @ 2025.10.10   msyu        최초생성
 *
 * @author msyu
 * @since 2025.10.10
 * @version 1.0
 * @see
 *
 *  Copyright (C) by MOPAS All right reserved.
 */

@Controller
@RequiredArgsConstructor
public class RoleMenuMngController {
	
	private static final Logger logger = LoggerFactory.getLogger(QuestionMngController.class);
	
	/** Validator */
	private final DefaultBeanValidator beanValidator;

	/**
	 * 권한별 메뉴관리 화면을 조회한다.
	 */
	@RequestMapping("/sysMng/roleMenuMng")
	public String roleMenuMngView(ModelMap model) throws Exception {
		
		return "sysMng/roleMenuMng";
	}
		

}
