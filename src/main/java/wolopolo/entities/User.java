package wolopolo.entities;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "user")
public class User extends BaseEntity{
	@Column(name = "name")
	private String name;
	@Column(name = "password")
	private String password;
	@Column(name = "urlimg")
	private String urlimg;
	@Column(name = "descript")
	private String descript;
	@Column(name = "email")
	private String email;
	@Column(name = "phonenumber")
	private String phonenumber;
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(name = "user_role"
		, joinColumns = @JoinColumn(name = "userid") // phải là userid vì đang định nghĩa bảng trung gian ở User Entity
		, inverseJoinColumns = @JoinColumn(name = "roleid")
	)
	private List<Role> roleList;
	
	@OneToMany(cascade = CascadeType.ALL, fetch = FetchType.LAZY, mappedBy = "user")
	private List<Post> postList;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	public String getUrlimg() {
		return urlimg;
	}

	public void setUrlimg(String urlimg) {
		this.urlimg = urlimg;
	}

	public String getDescript() {
		return descript;
	}

	public void setDescript(String descript) {
		this.descript = descript;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhonenumber() {
		return phonenumber;
	}

	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}

	public List<Role> getRoleList() {
		return roleList;
	}

	public void setRoleList(List<Role> roleList) {
		this.roleList = roleList;
	}

	public List<Post> getPostList() {
		return postList;
	}

	public void setPostList(List<Post> postList) {
		this.postList = postList;
	}

	public User(Integer id, boolean status, String name, String password, String urlimg, String descript, String email,
			String phonenumber, List<Role> roleList, List<Post> postList) {
		super(id, status);
		this.name = name;
		this.password = password;
		this.urlimg = urlimg;
		this.descript = descript;
		this.email = email;
		this.phonenumber = phonenumber;
		this.roleList = roleList;
		this.postList = postList;
	}

	public User() {
		super();
	}
	
	
	
}
