package wolopolo.entities;

public class User_Role extends BaseEntity{
	private Integer userId;
	private Integer roleId;
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public Integer getRoleId() {
		return roleId;
	}
	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}
	
	public User_Role(Integer id, boolean status, Integer userId, Integer roleId) {
		super(id, status);
		this.userId = userId;
		this.roleId = roleId;
	}
	public User_Role() {
		super();
	}
	
	
}
