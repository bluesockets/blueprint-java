package com.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Comparator;

/**
 * Created by bluesockets on 12/7/14.
 */

@Entity
@Table(name= "tb_user_authority")
public class UserAuthority implements Serializable, Comparable<UserAuthority> {

    private static final long serialVersionUID = 1L;

    // == fields == //

    @Id @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="user_authority_id")
    protected Integer userAuthorityId;

    @Column(name="authority")
    protected String authority;

    // == helpers == //

    public int compareTo(UserAuthority otherAuthority) {
        return authority.compareTo(otherAuthority.authority);
    }

    @Override
    public String toString() {
        return "UserAuthorities {" +
                "userAuthorityId=" + userAuthorityId +
                ", authority='" + authority + '\'' +
                '}';
    }

    // == methods == //

    public Integer getUserAuthorityId() {
        return userAuthorityId;
    }
    public void setUserAuthorityId(Integer userAuthorityId) {
        this.userAuthorityId = userAuthorityId;
    }
    public String getAuthority() {
        return authority;
    }
    public void setAuthority(String authority) {
        this.authority = authority;
    }
}
