package wolopolo.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

import org.springframework.security.core.GrantedAuthority;

@Entity
@Table(name = "role")
public class Role extends BaseEntity implements GrantedAuthority{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4922573763733544812L;
	@Column(name = "name")
	private String name;
	@Column(name = "descript")
	private String descript;
	
	@ManyToMany(fetch = FetchType.EAGER, mappedBy = "roleList")
	private List<User> users ;
	
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

	public List<User> getUsers() {
		return users;
	}

	public void setUsers(List<User> users) {
		this.users = users;
	}

	public Role(Integer id, boolean status, String name, String descript, List<User> users) {
		super(id, status);
		this.name = name;
		this.descript = descript;
		this.users = users;
	}

	public Role() {
		super();
	}

	@Override
	public String getAuthority() {
		// TODO Auto-generated method stub
		return this.name;
	}
	
	
	
}
