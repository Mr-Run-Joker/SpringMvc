package com.soft.foreground;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/foreground")
public class Register {
    @RequestMapping("/toRegister.action")
    public ModelAndView toRegister(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("foreground/register");
        return mv;
    }
}
