package com.login.entities;

/**
 * Created by bluesockets on 12/7/14.
 */

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;


@Entity
@Table(name= "tb_user")
@NamedQueries({
    @NamedQuery(
        name="user.getUserByUsername",
        query="SELECT u FROM com.login.entities.User u join u.authorities WHERE u.userName = :username"
    )
})
public class User implements Serializable {

    // == fields == //

    private static final long serialVersionUID = 1L;

    @Id	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="user_id")
    protected Integer userId;

    @NotNull @Size(min=4, max=32)
    @Column(name="user_name")
    protected String userName;

    @NotNull @Size(min=8)
    @Column(name="password")
    protected String password;

    @Column(name="is_active")
    protected boolean isActive = true;

    @OneToMany
    protected Set<UserAuthority> authorities = new HashSet<>();

    // == helpers == //

    @Override
    public String toString() {
        return "User{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", isActive=" + isActive +
                ", authorities=" + authorities +
                '}';
    }

    // == methods == //

    public Integer getUserId() {
        return userId;
    }
    public void setUserId(Integer userId) {
        this.userId = userId;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public boolean isActive() {
        return isActive;
    }
    public void setActive(boolean isActive) {
        this.isActive = isActive;
    }
    public Set<UserAuthority> getAuthorities() {
        return authorities;
    }
    public void setAuthorities(Set<UserAuthority> authorities) {
        this.authorities = authorities;
    }
}