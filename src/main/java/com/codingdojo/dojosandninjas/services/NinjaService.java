package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Ninja;
import com.codingdojo.dojosandninjas.repositories.NinjaRepository;

@Service
public class NinjaService {
	@Autowired
	private NinjaRepository ninRepo;
	
	public List<Ninja> allNinjas()
	{
		return ninRepo.findAll();
	}
	
	public Ninja createNinja(Ninja n)
	{
		return ninRepo.save(n);
	}
	
	public Ninja findNinja(Long id)
	{
		Optional<Ninja> tempNinja = ninRepo.findById(id);
		if (tempNinja.isPresent())
		{
			return tempNinja.get();
		}
		else
		{
			return null;
		}
	}
	
	public Ninja updateNinja(Ninja n)
	{
		return ninRepo.save(n);
	}
	
	public void deleteNinja(Long id)
	{
		ninRepo.deleteById(id);
	}
}