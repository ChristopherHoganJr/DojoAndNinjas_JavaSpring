package com.codingdojo.dojosandninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.dojosandninjas.models.Dojo;
import com.codingdojo.dojosandninjas.repositories.DojoRepository;

@Service
public class DojoService {
	@Autowired
	private DojoRepository dojoRepo;
	
	public List<Dojo> allDojos()
	{
		return dojoRepo.findAll();
	}
	
	public Dojo createDojo(Dojo d)
	{
		return dojoRepo.save(d);
	}
	
	public Dojo findDojo(Long id)
	{
		Optional<Dojo> tempDojo = dojoRepo.findById(id);
		if (tempDojo.isPresent())
		{
			return tempDojo.get();
		}
		else
		{
			return null;
		}
	}
	
	public Dojo updateDojo(Dojo d)
	{
		return dojoRepo.save(d);
	}
	
	public void deleteDojo(Long id)
	{
		dojoRepo.deleteById(id);
	}
}
