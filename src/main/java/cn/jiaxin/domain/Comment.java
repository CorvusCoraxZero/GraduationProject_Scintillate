package cn.jiaxin.domain;

import java.io.Serializable;
import java.util.Date;

public class Comment implements Serializable {
    private int wid;
    private int sequence;
    private int publisher;
    private int towho;
    private String content;
    private Date time;

    public int getWid() {
        return wid;
    }

    public void setWid(int wid) {
        this.wid = wid;
    }

    public int getSequence() {
        return sequence;
    }

    public void setSequence(int sequence) {
        this.sequence = sequence;
    }

    public int getPublisher() {
        return publisher;
    }

    public void setPublisher(int publisher) {
        this.publisher = publisher;
    }

    public int getTowho() {
        return towho;
    }

    public void setTowho(int towho) {
        this.towho = towho;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Comment{" +
                "wid=" + wid +
                ", sequence=" + sequence +
                ", publisher=" + publisher +
                ", towho=" + towho +
                ", content='" + content + '\'' +
                ", time=" + time +
                '}';
    }
}
