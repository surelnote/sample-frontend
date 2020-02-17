package com.nuri.lguplus;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
 
@Controller
public class JspController {
 
    @RequestMapping("/jsp")
    public String jsp() throws Exception {
        return "main";
    }
    
    @RequestMapping("/abcd")
    public @ResponseBody String abcd2() throws Exception {
        return "abcd";
    }
    
    @RequestMapping("/websocket")
    public String websocket() throws Exception {
        return "websocket";
    }
    
    @RequestMapping("/websocket2")
    public String websocket2() throws Exception {
        return "websocket2";
    }
    
    @RequestMapping("/")
    public String main() throws Exception {
        return "main";
    }
    
    @RequestMapping("/login")
    public String login() throws Exception {
        return "auth/login";
    }

    @RequestMapping("/{path}")
    public String test(@PathVariable String path) throws Exception {
        return path;
    }
}
