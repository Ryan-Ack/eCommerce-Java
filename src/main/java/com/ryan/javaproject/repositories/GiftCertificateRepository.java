package com.ryan.javaproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ryan.javaproject.models.GiftCertificate;

@Repository
public interface GiftCertificateRepository extends CrudRepository<GiftCertificate, Long> {

		List<GiftCertificate> findAll();
}
