package com.benq.interceptor;

import com.benq.annotation.NeedLogin;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor extends HandlerInterceptorAdapter {


    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
        throws Exception {

        if(handler.getClass().isAssignableFrom(HandlerMethod.class)){
            NeedLogin needLogin = ((HandlerMethod) handler).getMethodAnnotation(NeedLogin.class);

            //没有声明需要权限,或者声明不验证权限
            if(needLogin == null || !needLogin.isValidate())
                return true;
            else{
                HttpSession session = request.getSession();
                Object username = session.getAttribute("username");
                //在这里实现自己的权限验证逻辑
                if(username == null || username.equals("")) {
                    //返回到登录界面
                    response.sendRedirect("/");
                    return false;
                }else {
                    //TODO  进行更加复杂的权限校验 check more info here
                    return true;
                }
            }
        }
        else
            return true;


    }
}
