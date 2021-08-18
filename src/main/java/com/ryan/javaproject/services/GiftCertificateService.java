package com.ryan.javaproject.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ryan.javaproject.models.GiftCertificate;
import com.ryan.javaproject.repositories.GiftCertificateRepository;

@Service
public class GiftCertificateService {

		@Autowired
		private GiftCertificateRepository giftCertificateRepository;
		
		
		public List<GiftCertificate> allGiftCertificates(){
			return giftCertificateRepository.findAll();
		}
		
		
		public GiftCertificate save(GiftCertificate g) {
			return giftCertificateRepository.save(g);
		}
		
		public GiftCertificate findById(Long id) {
			Optional<GiftCertificate> giftCertificate = giftCertificateRepository.findById(id);
			
			if(giftCertificate.isPresent()) {
				return giftCertificate.get();
			}else {
				return null;
			}
		}
		
		public void delete(Long id) {
			giftCertificateRepository.deleteById(id);
		}
		
}
