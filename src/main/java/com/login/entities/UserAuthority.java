package com.login.entities;

import javax.persistence.*;

/**
 * Created by bluesockets on 12/7/14.
 */

@Entity
@Table(name= "tb_user_authorities")
public class UserAuthority {

    // == fields == //

    @Id @GeneratedValue(strategy= GenerationType.IDENTITY)
    @Column(name="user_authority_id")
    protected Integer userAuthorityId;

    @Column(name="authority")
    protected String role;

    // == helpers == //

    @Override
    public String toString() {
        return "UserAuthorities{" +
                "userAuthorityId=" + userAuthorityId +
                ", role='" + role + '\'' +
                '}';
    }

    // == methods == //

    public Integer getUserAuthorityId() {
        return userAuthorityId;
    }
    public void setUserAuthorityId(Integer userAuthorityId) {
        this.userAuthorityId = userAuthorityId;
    }
    public String getRole() {
        return role;
    }
    public void setRole(String role) {
        this.role = role;
    }
}
