package com.example.SneakerStore.dao;

import com.example.SneakerStore.domain.Authority;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AuthorityDao extends JpaRepository<Authority, Long> {

    Authority findByRole(String role);
}
