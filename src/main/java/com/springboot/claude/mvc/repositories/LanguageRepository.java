package com.springboot.claude.mvc.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.springboot.claude.mvc.models.Language;


public interface LanguageRepository extends CrudRepository<Language, Long> {
	// retrieve all languages from database
	List<Language> findAll();
	
	// delete languageById
	void deleteById(Long id);
}
