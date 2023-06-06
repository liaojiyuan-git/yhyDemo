package com.example.yhydemo.service;

import com.example.yhydemo.entity.BookContent;

public interface bookContentService     {

    BookContent getBookContentByBid(int bid, int num);
}
