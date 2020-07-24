package wolopolo.repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import wolopolo.entities.Post;

public interface PostRepository extends JpaRepository<Post, Integer>{
	
	@Query(value = "SELECT * FROM post ORDER BY views DESC LIMIT 0, 10", nativeQuery = true)
	public List<Post> findTopPost();
	
	@Query(value = "SELECT post.id, post.name, post.descript, post.categoryid, post.userid, post.urlimg, post.content,  post.views , post.status FROM post INNER JOIN user ON post.userid=user.id INNER JOIN category ON post.categoryid= category.id\r\n" + 
			"WHERE post.status=1 and (post.name LIKE %?1% OR post.descript LIKE %?1% OR post.content LIKE %?1% OR category.name LIKE %?1% OR category.descript LIKE %?1% OR user.name LIKE %?1% OR user.descript LIKE %?1%)\r\n" + 
			"", nativeQuery = true)
	public List<Post> searchPost(String keyWord);
	
	@Query(value = "select * from post inner join user on post.userid=user.id where user.id=?", nativeQuery = true)
	public List<Post> findPostByWriterId(String writerId);
	
	@Query(value = "select * from post inner join category on post.categoryid=category.id where category.id=?", nativeQuery = true)
	public List<Post> findPostByCategoryId(String categoryId);
}
