package com.model;

import com.login.utils.EncryptorService;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;
import java.util.TreeSet;


/**
 * Created by bluesockets on 12/7/14.
 */

@Entity
@Table(name= "tb_user")
@NamedQueries({
    @NamedQuery(
        name="user.getUserByUsername",
        query="select u from com.model.User u join fetch u.authorities where u.userName = :username"
    )
})
public class User implements Serializable {

    private static final long serialVersionUID = 1L;

    // == fields == //

    @Id	@GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="user_id")
    protected Integer userId;

    @NotNull @Size(min=4, max=32)
    @Column(name="user_name", unique = true)
    protected String userName;

    @NotNull @Size(min=8)
    @Column(name="password")
    protected String password;

    @Column(name="is_active")
    protected boolean isActive = true;

    @Column(name="created_on")
    protected Date createdOn;

    @Column(name="modified_on")
    protected Date modifiedOn;

    @OrderBy("authority desc")
    @Fetch(FetchMode.JOIN)
    @OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL, orphanRemoval = true)
    @JoinColumn(name="user_id")
    protected Set<UserAuthority> authorities = new TreeSet<>();


    // == helpers == //

    public void initCreateData() {
        setPassword(EncryptorService.encrypt(getPassword()));
        UserAuthority basicRole = new UserAuthority();
        basicRole.setAuthority("ROLE_BASIC");
        getAuthorities().add(basicRole);
        setCreatedOn(new Date());
        setModifiedOn(new Date());
        setActive(true);
    }

    @Override
    public String toString() {
        return "User {" +
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
    public Date getCreatedOn() {
        return createdOn;
    }
    public void setCreatedOn(Date createdOn) {
        this.createdOn = createdOn;
    }
    public Date getModifiedOn() {
        return modifiedOn;
    }
    public void setModifiedOn(Date modifiedOn) {
        this.modifiedOn = modifiedOn;
    }
}