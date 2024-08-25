package com.itsnotrohit.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.itsnotrohit.account.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}
