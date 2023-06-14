package com.project.librarysystem.services.impl;

import java.util.List;

import org.springframework.stereotype.Service;

import com.project.librarysystem.dtos.PublisherDTO;
import com.project.librarysystem.exceptions.ResourceNotFoundException;
import com.project.librarysystem.mappers.PublisherMapper;
import com.project.librarysystem.models.Publisher;
import com.project.librarysystem.repositories.PublisherRepository;
import com.project.librarysystem.services.PublisherService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class PublisherServiceImpl implements PublisherService{

    private final PublisherRepository repository;
    private final PublisherMapper mapper;


    @Override
    public PublisherDTO findById(Long id) {
        Publisher publisher = repository.findById(id)
        .orElseThrow(() -> new ResourceNotFoundException("Book with id " + id + " not found."));

        return mapper.toPublisherDTO(publisher);
    }


    @Override
    public List<PublisherDTO> findAll() {
        return mapper.toPublisherDTOList(repository.findAll());
    }


    @Override
    public PublisherDTO insert(Publisher publisher) {
        if (publisher == null || publisher.getName() == null) {
            throw new ResourceNotFoundException("Publisher cannot be null.");
        }

         return mapper.toPublisherDTO(repository.save(publisher));
    }


    @Override
    public Publisher findByName(String name) {
    return repository.findByName(name);
    }
    
}
