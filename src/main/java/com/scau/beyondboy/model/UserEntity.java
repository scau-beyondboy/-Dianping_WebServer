package com.scau.beyondboy.model;
import javax.persistence.*;
/**
 * Author:beyondboy
 * Gmail:xuguoli.scau@gmail.com
 * Date: 2015/9/27
 * Time: 23:41
 */
@Entity
@Table(name = "user", schema = "", catalog = "android")
public class UserEntity
{
    private int userId;
    private String userName;
    private String userLoginPwd;
    private String userPayPwd;
    private String userTel;
    @Id
    @Column(name = "user_id")
    public int getUserId()
    {
        return userId;
    }
    public void setUserId(int userId)
    {
        this.userId = userId;
    }
    @Basic
    @Column(name = "user_name")
    public String getUserName()
    {
        return userName;
    }
    public void setUserName(String userName)
    {
        this.userName = userName;
    }
    @Basic
    @Column(name = "user_login_pwd")
    public String getUserLoginPwd()
    {
        return userLoginPwd;
    }
    public void setUserLoginPwd(String userLoginPwd)
    {
        this.userLoginPwd = userLoginPwd;
    }
    @Basic
    @Column(name = "user_pay_pwd")
    public String getUserPayPwd()
    {
        return userPayPwd;
    }
    public void setUserPayPwd(String userPayPwd)
    {
        this.userPayPwd = userPayPwd;
    }
    @Basic
    @Column(name = "user_tel")
    public String getUserTel()
    {
        return userTel;
    }
    public void setUserTel(String userTel)
    {
        this.userTel = userTel;
    }
    @Override
    public boolean equals(Object o)
    {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        UserEntity that = (UserEntity) o;

        if (userId != that.userId) return false;
        if (userName != null ? !userName.equals(that.userName) : that.userName != null) return false;
        if (userLoginPwd != null ? !userLoginPwd.equals(that.userLoginPwd) : that.userLoginPwd != null) return false;
        if (userPayPwd != null ? !userPayPwd.equals(that.userPayPwd) : that.userPayPwd != null) return false;
        if (userTel != null ? !userTel.equals(that.userTel) : that.userTel != null) return false;

        return true;
    }
    @Override
    public int hashCode()
    {
        int result = userId;
        result = 31 * result + (userName != null ? userName.hashCode() : 0);
        result = 31 * result + (userLoginPwd != null ? userLoginPwd.hashCode() : 0);
        result = 31 * result + (userPayPwd != null ? userPayPwd.hashCode() : 0);
        result = 31 * result + (userTel != null ? userTel.hashCode() : 0);
        return result;
    }
}
