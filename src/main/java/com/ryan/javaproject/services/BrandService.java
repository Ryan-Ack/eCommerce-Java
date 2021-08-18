package com.ryan.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryan.javaproject.models.Brand;
import com.ryan.javaproject.repositories.BrandRepository;

@Service
public class BrandService {
	@Autowired
	private BrandRepository brandRepository;
	


    
	
	public List<Brand> allBrands(){
		return brandRepository.findAll();
	}
	
	
	public Brand save(Brand b) {
		return brandRepository.save(b);
	}
	
	public Brand findById(Long id) {
		Optional<Brand> brand = brandRepository.findById(id);
		
		if(brand.isPresent()) {
			return brand.get();
		}else {
			return null;
		}
	}
	
	public void delete(Long id) {
		brandRepository.deleteById(id);
	}
	

	
	
	
}
