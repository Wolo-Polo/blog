package wolopolo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import wolopolo.entities.User;

public interface UserRepository extends JpaRepository<User, Integer>{
	@Query(value = "Select * from User inner join User_Role on User.id=User_Role.userid inner join Role on User_Role.roleid=Role.id "
			+ "where Role.name=?" ,nativeQuery = true)
	public List<User> findUsersByRole(String role);
	
	public User findUserByName(String name);
}
