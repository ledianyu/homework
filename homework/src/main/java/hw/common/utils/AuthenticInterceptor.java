package hw.common.utils;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.ModelAndViewDefiningException;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.ibatis.common.logging.Log;
import com.ibatis.common.logging.LogFactory;

import hw.sysmng.service.MenuVO;

/**
 * @Class Name : AuthenticInterceptor.java
 * @Description : 권한 인터셉터
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
public class AuthenticInterceptor extends HandlerInterceptorAdapter {
	
	protected Log log = LogFactory.getLog(AuthenticInterceptor.class);
	
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        
        log.debug("preHandle >>>  Controller 실행 전 실행");
        
		HttpSession session = request.getSession(true);
		
		if(session == null || session.getAttribute("ssUserId") == null || session.getAttribute("ssUserId").equals("")) {

			ModelMap model = new ModelMap();
			model.addAttribute("loginResult", "세션이 만료되어 로그아웃 되었습니다. 다시 로그인 해주세요.");
			response.sendRedirect("/loginView");
			
			log.debug("preHandle >>>  세션이 만료되어 로그아웃 되었습니다. 다시 로그인 해주세요.");
			
			return false;
		}else {
			
			List<MenuVO> menuList = (List<MenuVO>) session.getAttribute("ssMnuList");
			
			if(menuList == null || menuList.size() == 0) {
				
				ModelMap model = new ModelMap();
				model.addAttribute("loginResult", "세션이 만료되어 로그아웃 되었습니다. 다시 로그인 해주세요.");
				response.sendRedirect("/logout");
				
				log.debug("preHandle >>>  세션이 만료되어 로그아웃 되었습니다. 다시 로그인 해주세요.");
				
				return false;
			}
			
			//호출 URL이 권한메뉴에 있는지 확인
			String requestURI = request.getRequestURI();
			
			String prevUri = request.getHeader("Referer");
			if(prevUri == null) {
				prevUri = "/main";
			}else {
				prevUri = prevUri.replace(request.getContextPath(), "");
			}
			
			log.debug("preHandle >>>  requestURI : " + requestURI);
			log.debug("preHandle >>>  prevUri : " + prevUri);
			
			boolean urlChk = false;
			//메인화면은 권한 체크 제외
			if(!requestURI.equals("/main")) {
				for (MenuVO menuVO : menuList) {
					
					//1 depth 메뉴중 일치하는 값이 있는지 확인
					String programUrl = menuVO.getProgramUrl();
					if(requestURI.indexOf(programUrl) > -1) {
						urlChk = true;
					}

					//2 depth 메뉴중 일치하는 값이 있는지 확인
					List<MenuVO> menu2List = menuVO.getMenu2List();
					
					for (MenuVO menu2VO : menu2List) {
						
						String program2Url = menu2VO.getProgramUrl();
						if(requestURI.indexOf(program2Url) > -1) {
							urlChk = true;
						}
						
					}
				}
			}else {
				urlChk = true;
			}
			
			if(!urlChk) {
				ModelMap model = new ModelMap();
				model.addAttribute("resultMsg", "해당 메뉴의 권한이 없습니다. 관리자에게 문의 해주세요.");
				model.addAttribute("prevUri", prevUri);

				log.debug("preHandle >>>  " + requestURI + " : 해당 메뉴의 권한이 없습니다. 관리자에게 문의 해주세요.");
				response.sendRedirect(prevUri);
				
				return false;
			}
		}
		
        return true;
    }
 
    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modeAndView) throws Exception {
        log.debug("postHandle >>>  Controller 실행 후 실행");
    }
 
    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex){
        log.debug("afterCompletion >>>  preHandle 메소드 return값이 true일 때 실행");
    }

}
