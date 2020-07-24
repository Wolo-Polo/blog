package wolopolo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import wolopolo.entities.Contact;

@Repository
public interface ContactRepository extends JpaRepository<Contact, Integer>{

}
