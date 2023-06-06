package com.example.yhydemo.entity;

import java.util.Date;

public class Books {
//    `bid`,`bname`,`bauthor`,`bintroduction`,`bimg`,`bcategory`,`bnum`,`btime`,`readtimes`,`totalwords`,`collectiontimes`
    private int bid;
    private String bname;
    private String bauthor;
    private String bintroduction;
    private String bimg;
    private String bcategory;
    private int bnum;
    private Date btime;

    private Integer isvip;

    public Integer getIsvip() {
        return isvip;
    }

    public void setIsvip(Integer isvip) {
        this.isvip = isvip;
    }

    @Override
    public String toString() {
        return "Books{" +
                "bid=" + bid +
                ", bname='" + bname + '\'' +
                ", bauthor='" + bauthor + '\'' +
                ", bintroduction='" + bintroduction + '\'' +
                ", bimg='" + bimg + '\'' +
                ", bcategory='" + bcategory + '\'' +
                ", bnum=" + bnum +
                ", btime=" + btime +
                ", readtimes=" + readtimes +
                ", state=" + bstate +
                ", totalwords=" + totalwords +
                ", collectiontimes=" + collectiontimes +
                '}';
    }

    private Integer readtimes;
    private Integer bstate;

    public Books(int bid, String bname, String bauthor, String bintroduction, String bimg, String bcategory, int bnum, Date btime, Integer readtimes, int bstate, int totalwords, int collectiontimes) {
        this.bid = bid;
        this.bname = bname;
        this.bauthor = bauthor;
        this.bintroduction = bintroduction;
        this.bimg = bimg;
        this.bcategory = bcategory;
        this.bnum = bnum;
        this.btime = btime;
        this.readtimes = readtimes;
        this.bstate = bstate;
        this.totalwords = totalwords;
        this.collectiontimes = collectiontimes;
    }



    public void setReadtimes(Integer readtimes) {
        this.readtimes = readtimes;
    }

    private int totalwords;
    private int collectiontimes;

    public Books() {
    }

    public int getBid() {
        return bid;
    }

    public void setBid(int bid) {
        this.bid = bid;
    }

    public String getBname() {
        return bname;
    }

    public void setBname(String bname) {
        this.bname = bname;
    }

    public String getBauthor() {
        return bauthor;
    }

    public void setBauthor(String bauthor) {
        this.bauthor = bauthor;
    }

    public String getBintroduction() {
        return bintroduction;
    }

    public void setBintroduction(String bintroduction) {
        this.bintroduction = bintroduction;
    }

    public String getBimg() {
        return bimg;
    }

    public void setBimg(String bimg) {
        this.bimg = bimg;
    }

    public String getBcategory() {
        return bcategory;
    }

    public void setBcategory(String bcategory) {
        this.bcategory = bcategory;
    }

    public int getBnum() {
        return bnum;
    }

    public void setBnum(int bnum) {
        this.bnum = bnum;
    }

    public Date getBtime() {
        return btime;
    }

    public void setBtime(Date btime) {
        this.btime = btime;
    }

    public int getReadtimes() {
        return readtimes;
    }

    public void setReadtimes(int readtimes) {
        this.readtimes = readtimes;
    }

    public int getTotalwords() {
        return totalwords;
    }

    public void setTotalwords(int totalwords) {
        this.totalwords = totalwords;
    }

    public int getCollectiontimes() {
        return collectiontimes;
    }

    public void setCollectiontimes(int collectiontimes) {
        this.collectiontimes = collectiontimes;
    }

    public Integer getBstate() {
        return bstate;
    }

    public void setBstate(Integer bstate) {
        this.bstate = bstate;
    }
}
