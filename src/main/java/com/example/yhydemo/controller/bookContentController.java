package com.example.yhydemo.controller;

import com.example.yhydemo.entity.BookContent;
import com.example.yhydemo.service.bookContentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class bookContentController {

    @Autowired
    bookContentService bookContentService;

    @RequestMapping("/getContent")
    public String toRegister(){
        BookContent bookContentByBid = bookContentService.getBookContentByBid(76, 2);
        System.out.println(bookContentByBid);
        return "bookcontent";
    }

}
