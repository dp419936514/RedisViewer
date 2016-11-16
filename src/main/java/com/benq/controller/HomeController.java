package com.benq.controller;

import com.benq.annotation.NeedLogin;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;

@Controller public class HomeController {

    @NeedLogin
    @RequestMapping(value = "/") public ModelAndView home() throws IOException {
        return new ModelAndView("index");
    }

    @NeedLogin
    @RequestMapping(value = "/index") public ModelAndView index() throws IOException {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/login") public ModelAndView login() throws IOException {
        return new ModelAndView("login");
    }

}
