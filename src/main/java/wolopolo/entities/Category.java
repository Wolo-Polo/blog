package wolopolo.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "category")
public class Category extends BaseEntity{
	@Column(name = "name")
	private String name;
	@Column(name = "descript")
	private String descript;
	@Column(name = "urlimg")
	private String urlimg;
	
	@OneToMany(mappedBy = "category",cascade = CascadeType.ALL, fetch = FetchType.LAZY)
	private List<Post> postList;
	
	public void addPost(Post post) {
		postList.add(post);
		post.setCategory(this);
	}
	
	public void removePost(Post post) {
		postList.remove(post);
		post.setCategory(null);
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}
	
	public String getUrlimg() {
		return urlimg;
	}

	public void setUrlimg(String urlimg) {
		this.urlimg = urlimg;
	}

	public List<Post> getPostList() {
		return postList;
	}

	public void setPostList(List<Post> postList) {
		this.postList = postList;
	}
	
	public Category(Integer id, boolean status, String name, String descript, String urlimg, List<Post> postList) {
		super(id, status);
		this.name = name;
		this.descript = descript;
		this.urlimg = urlimg;
		this.postList = postList;
	}

	public Category() {
		super();
	}
	
	
}
