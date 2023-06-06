package com.example.yhydemo.service;

import com.example.yhydemo.entity.BookContent;
import com.example.yhydemo.dao.bookContentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class bookContentServiceImpl implements bookContentService{
    @Autowired
    private bookContentDao bookcontentDao;
    @Override
    public BookContent getBookContentByBid(int bid, int num) {
        return bookcontentDao.getBookContentByBid(bid,num);
    }
}
