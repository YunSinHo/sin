package com.ld.interceptor;

import java.util.Arrays;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;
@Component
public class LoginIntercepter implements HandlerInterceptor {
	   public List loginEssential
       = Arrays.asList("/post/**", "/comment/**",  "/category/**", "/member/manage/**", "/main/edit/**");

public List loginInessential
       = Arrays.asList("/login.do", "/join.do", "/joinForm.do","/joinStudentForm.do","/joinTeacherForm.do",
    		   "/idCheck.do","/idCheckTeacher.do","/loginForm.do","/logout.do");

@Override
public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
	String loginStudent = (String)request.getSession().getAttribute("loginStudent");
	String loginTeacher = (String)request.getSession().getAttribute("loginStudent");

   if(loginStudent != null||loginTeacher != null){return true;}
   
   else{
       String destUri = request.getRequestURI();
       String destQuery = request.getQueryString();
       String dest = (destQuery == null) ? destUri : destUri+"?"+destQuery;
       request.getSession().setAttribute("dest", dest);
   
       response.sendRedirect("/login.do");
       return false;
   }
}
}
	