package com.benq.controller;

import com.benq.annotation.NeedLogin;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

@Controller public class HomeController {

    private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

    @NeedLogin @RequestMapping(value = "/") public ModelAndView home() throws IOException {
        return new ModelAndView("index");
    }

    @NeedLogin @RequestMapping(value = "/index") public ModelAndView index() throws IOException {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/login")
    public ModelAndView login(@RequestParam(value = "username", required = false) String username,
        @RequestParam(value = "password", required = false) String password, HttpServletRequest request) throws IOException {
//        username = (String) request.getAttribute("username");
//        password = (String) request.getAttribute("password");
        if (username == null || password == null) {
            return new ModelAndView("login");
        } else {
            request.getSession().setAttribute("username", username);
            //TODO check password
            //do something

            logger.info("username : {} , password : {} ", username, password);
            return new ModelAndView("index");
        }
    }



}
