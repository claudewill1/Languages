package com.springboot.claude.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.springboot.claude.mvc.models.Language;
import com.springboot.claude.mvc.repositories.LanguageRepository;

@Service
public class LanguageService {
	private final LanguageRepository languageRepository;
	
	public LanguageService(LanguageRepository languageRepository) {
		this.languageRepository = languageRepository;
	}
	
	// return all languages
	public List<Language> allLanguages(){
		return this.languageRepository.findAll();
	}
	
	// create/add a language
	public Language addLanguage(Language lang) {
		return this.languageRepository.save(lang);
	}
	
	// retrieve a language
	public Language findLanguage(Long id) {
		Optional<Language> optionalLang = languageRepository.findById(id);
		if(optionalLang.isPresent()) {
			return optionalLang.get();
		} else {
			return null;
		}
	}
	
	// edit a language
	public Language updateLanguage(Language lang) {
		return this.languageRepository.save(lang);
	}
	
	
	// delete language
	public void deleteLanguage(Long id) {
		languageRepository.deleteById(id);
	}
}
