package com.springboot.claude.mvc.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.springboot.claude.mvc.models.Language;
import com.springboot.claude.mvc.services.LanguageService;

@Controller
public class LanguagesController {
	
	private final LanguageService languageService;
	public LanguagesController(LanguageService languageService) {
		this.languageService = languageService;
	}
	
	@RequestMapping("/languages")
	public String dashboard(Model model, @ModelAttribute("language") Language language) {
		List<Language> languages = this.languageService.allLanguages();
		model.addAttribute("languages",languages);
		return "dashboard.jsp";
	}
	
	@RequestMapping(value="/languages/new",method=RequestMethod.POST)
	public String create(Model model, @Valid @ModelAttribute("language") Language language, BindingResult result) {
		System.out.println(language.getName());
		if(result.hasErrors()) {
			List<Language> languages = languageService.allLanguages();
			model.addAttribute("languages",languages);
			return "dashboard.jsp";
		} else {
			this.languageService.addLanguage(language);
			return "redirect:/languages";
		}
	}
	
	@RequestMapping("/show/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Language language = languageService.findLanguage(id);
		model.addAttribute("language",language);
		return "/show.jsp";
	}
	
	@RequestMapping("/languages/{id}/edit")
	public String edit(@PathVariable("id") Long id, Model model) {
		Language language = languageService.findLanguage(id);
		model.addAttribute("language",language);
		return "update.jsp";
	}
	@RequestMapping(value="/languages/{id}",method=RequestMethod.PUT)
	public String update(@Valid @ModelAttribute("language") Language language, BindingResult result) {
		if(result.hasErrors()) {
			return "update.jsp";
		} else {
			languageService.updateLanguage(language);
			return "redirect:/languages";
		}
	}
	
	// delete book
	@RequestMapping(value="/languages/delete/{id}")
	public String delete(@PathVariable("id") Long id) {
		languageService.deleteLanguage(id);
		return "redirect:/languages";
	}
}
