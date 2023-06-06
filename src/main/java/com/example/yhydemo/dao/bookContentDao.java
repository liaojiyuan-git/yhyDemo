package com.example.yhydemo.dao;

import com.example.yhydemo.entity.BookContent;

public interface bookContentDao {

    BookContent getBookContentByBid(int bid,int num);
}
