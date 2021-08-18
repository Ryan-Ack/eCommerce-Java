package com.ryan.javaproject.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.ryan.javaproject.models.Brand;

@Repository
public interface BrandRepository extends CrudRepository<Brand, Long>{
//public interface BrandRepository extends JpaRepository<Brand, Long>{
	List<Brand> findAll();
}



