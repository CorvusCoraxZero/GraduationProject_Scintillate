package cn.jiaxin.domain;

import java.io.Serializable;

public class Tag implements Serializable {
    private String tname;
    private int tcount;

    public Tag() {
        this.tname = "";
        this.tcount = 0;
    }

    public Tag(String tname) {
        this.tname = tname;
        this.tcount = 1;
    }

    public Tag(String tname, int tcount) {
        this.tname = tname;
        this.tcount = tcount;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public int getTcount() {
        return tcount;
    }

    public void setTcount(int tcount) {
        this.tcount = tcount;
    }

    @Override
    public String toString() {
        return "Tag{" +
                "tname='" + tname + '\'' +
                ", tcout=" + tcount +
                '}';
    }
}
