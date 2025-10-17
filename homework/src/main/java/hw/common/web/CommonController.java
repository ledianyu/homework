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
package hw.common.web;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springmodules.validation.commons.DefaultBeanValidator;

import hw.basicdatamng.web.QuestionMngController;
import hw.common.service.CmmParamVO;
import hw.common.service.CommonService;
import hw.sysmng.service.MenuMngService;
import hw.sysmng.service.MenuVO;
import hw.sysmng.service.UserMngService;
import hw.sysmng.service.UserVO;
import lombok.RequiredArgsConstructor;

/**
 * @Class Name : CommonController.java
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

@Controller
@RequiredArgsConstructor
public class CommonController {
	
	private static final Logger logger = LoggerFactory.getLogger(QuestionMngController.class);

	/** CommonService */
	private final CommonService commonService;

	/** UserMngService */
	private final UserMngService userMngService;

	/** MenuMngService */
	private final MenuMngService menuMngService;
	
	/** Validator */
	private final DefaultBeanValidator beanValidator;

	/**
	 * 메인 화면을 조회한다.
	 */
	@RequestMapping("/main")
	public String mainView(ModelMap model) throws Exception {

		int num = commonService.selectUserCount();
		
		model.addAttribute("num", num);
		return "common/main";
	}
	
	/**
	 * 로그인 화면을 조회한다.
	 */
	@RequestMapping("/loginView")
	public String loginView(ModelMap model) throws Exception {

		return "common/login";
	}
	
	/**
	 * 로그인 한다.
	 */
	@RequestMapping("/login")
	public String login(@RequestParam HashMap paramMap, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {
		
		HttpSession session = request.getSession(true);
		String rtnUrl = "/main";
		
		
		/* 로그인 사용자 정보 조회 */
		UserVO userVO = userMngService.selectLoginUserInfo(paramMap);
		
		if(userVO != null) {
			if(userVO.getState().equals("Y")) {
				/* 사용자 정보 세션 생성 */
				session.setMaxInactiveInterval(1800);
				session.setAttribute("ssUserId", userVO.getUserId());
				session.setAttribute("ssUserNm", userVO.getKname());
				session.setAttribute("ssSchoolCd", userVO.getSchoolCd());
				session.setAttribute("ssGradeCd", userVO.getGradeCd());
				session.setAttribute("ssGroupId", userVO.getGroupId());
				
				/* 로그인 사용자 메뉴 세션 생성 */
				paramMap.put("loginUserGroupId", userVO.getGroupId());
				paramMap.put("roleYn", "Y");
				paramMap.put("state", "Y");
				List<MenuVO> resultList = menuMngService.selectMenuList(paramMap);
				session.setAttribute("ssMnuList", resultList);
				
				/* 아이디 저장  쿠키 적용 */
				/**
				String savePtlId = (String) request.getParameter("chkSavePtlId");
				Cookie cookie = null;
				if(savePtlId != null) {	// 쿠키 저장
					cookie = new Cookie("savePtlId", userVO.getUserId());
					cookie.setMaxAge(30 * 24 * 60 * 60);
				} else {
					cookie = new Cookie("savePtlId", "");
					cookie.setMaxAge(0);
				}
				
				cookie.setPath("/");
				response.addCookie(cookie);
				**/
				
				model.addAttribute("loginResult", "");
			} else {
				model.addAttribute("loginResult", "로그인 가능한 사용자가 아닙니다.");
				rtnUrl = "/loginView";
			}
		} else {
			model.addAttribute("loginResult", "아이디 또는 비밀번호를 잘못 입력하셨습니다.");
			rtnUrl = "/loginView";
		}
		
		return "forward:" + rtnUrl;
	}
	
	/**
	 * 로그아웃 처리한다.
	 */
	@RequestMapping("/logout")
	public String logout(@ModelAttribute("paramMap") UserVO paramMap, HttpServletRequest request, HttpServletResponse response, ModelMap model) throws Exception {

		HttpSession session = request.getSession(true);
		
		/* 세션 삭제 */
		session.removeAttribute("ssUserId");
		session.removeAttribute("ssUserNm");
		session.removeAttribute("ssSchoolCd");
		session.removeAttribute("ssGradeCd");
		session.removeAttribute("ssGroupId");
		session.removeAttribute("ssMnuList");
		
		session.invalidate();
		
		return "forward:/loginView";
	}

	/**
	 * 테스트 화면을 조회한다.
	 */
	@RequestMapping("/roleTest")
	public String roleTest(ModelMap model) throws Exception {
		return "common/main";
	}
		

}
