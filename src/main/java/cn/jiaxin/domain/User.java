package cn.jiaxin.domain;

import java.io.Serializable;
import java.util.Date;
import java.util.UUID;

public class User implements Serializable {
    private int uid;
    private String email;
    private String password;
    private String uname;
    private String gender;
    private Date birthday;
    private int role;
    private String status;
    private String code;
    private String userfolder;

    public String getIntroduce() {
        return introduce;
    }

    public void setIntroduce(String introduce) {
        this.introduce = introduce;
    }

    private String introduce;

    public User() {
        this.role = 0;
        this.status="Y";
        this.code= String.valueOf(UUID.randomUUID());
    }

    public String getUserfolder() {
        return userfolder;
    }

    public void setUserfolder(String userfolder) {
        this.userfolder = userfolder;
    }

    public int getUid() {
        return uid;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public int getRole() {
        return role;
    }

    public void setRole(int role) {
        this.role = role;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "User{" +
                "uid=" + uid +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", uname='" + uname + '\'' +
                ", gender='" + gender + '\'' +
                ", birthday=" + birthday +
                ", role=" + role +
                ", status='" + status + '\'' +
                ", code='" + code + '\'' +
                '}';
    }
}
