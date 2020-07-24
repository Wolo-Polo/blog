package wolopolo.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "post")
public class Post extends BaseEntity{
	@Column(name = "name")
	private String name;
	@Column(name = "descript")
	private String descript;
	
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "categoryid")
	private Category category;
	
	@Column(name = "content", columnDefinition = "TEXT")
	private String content;
	
	@Column(name = "urlimg")
	private String urlimg;
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "userid")
	private User user;
	
	
	@Column(name = "views")
	private int views;


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


	public Category getCategory() {
		return category;
	}


	public void setCategory(Category category) {
		this.category = category;
	}


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getUrlimg() {
		return urlimg;
	}


	public void setUrlimg(String urlimg) {
		this.urlimg = urlimg;
	}


	public User getUser() {
		return user;
	}


	public void setUser(User user) {
		this.user = user;
	}


	public int getViews() {
		return views;
	}


	public void setViews(int views) {
		this.views = views;
	}


	public Post(Integer id, boolean status, String name, String descript, Category category, String content,
			String urlimg, User user, int views) {
		super(id, status);
		this.name = name;
		this.descript = descript;
		this.category = category;
		this.content = content;
		this.urlimg = urlimg;
		this.user = user;
		this.views = views;
	}


	public Post() {
		super();
	}
	
	
}
