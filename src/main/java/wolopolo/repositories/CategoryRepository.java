package wolopolo.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import wolopolo.entities.Category;

public interface CategoryRepository extends JpaRepository<Category, Integer>{
	
}
