package cn.jiaxin.domain;

import java.io.Serializable;

public class Work implements Serializable {
    private int wid;
    private int uid;
    private String wname;
    private String introduce;
    private int allow;
    private String address;

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getWname() {
        return wname;
    }

    public void setWname(String wname) {
        this.wname = wname;
    }

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    public int getAllow() {
        return allow;
    }

    public void setAllow(int allow) {
        this.allow = allow;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "Work{" +
                "wid=" + wid +
                ", uid=" + uid +
                ", wname='" + wname + '\'' +
                ", introduce='" + introduce + '\'' +
                ", allow=" + allow +
                ", address='" + address + '\'' +
                '}';
    }
}
