package com.project.librarysystem.services;


import java.util.List;

import com.project.librarysystem.dtos.PublisherDTO;
import com.project.librarysystem.models.Publisher;

public interface PublisherService {
    
    PublisherDTO findById(Long id);
    List<PublisherDTO> findAll();
    Publisher getOrCreatPublisher(Publisher publisher);

}
