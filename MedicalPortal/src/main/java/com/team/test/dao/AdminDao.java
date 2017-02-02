package com.team.test.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import com.team.test.domain.AdminUser;

public interface AdminDao extends JpaRepository<AdminUser, Integer> {

}
