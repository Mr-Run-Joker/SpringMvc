package com.soft.foreground;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.soft.tools.ImageUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.io.IOException;
import java.io.OutputStream;
import java.sql.DriverManager;

@Controller
@RequestMapping("/foreground")
public class ForegroundWeb {
    @RequestMapping("/toIndex.action")
    public ModelAndView toIndex(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("foreground/index");

        return mv;
    }
    @RequestMapping("/toLogin.action")
    public ModelAndView toLogin(){
        ModelAndView mv=new ModelAndView();
        mv.setViewName("foreground/login");
        return mv;
    }
    @RequestMapping(value="/createImage.action")
    public void createImage(HttpServletRequest request, HttpServletResponse response){
       HttpSession session= request.getSession();
        ImageUtil.createImage();
        session.setAttribute("checkCode",ImageUtil.getCode());
        try {
            OutputStream os= response.getOutputStream();
            ImageIO.write(ImageUtil.getCodeImg(),"jpg",os);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

}
