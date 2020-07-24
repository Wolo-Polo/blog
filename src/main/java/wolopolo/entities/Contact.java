package wolopolo.entities;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;

@Entity
@Table(name = "contact")
public class Contact extends BaseEntity{
	@Column(name = "username", nullable = false)
	private String userName;
	@Column(name = "email", nullable = false)
	private String email;
	@Column(name = "messenge", nullable = false)
	private String messenge;
	@Column(name = "send_date", nullable = false)
	private LocalDateTime send_date;
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMessenge() {
		return messenge;
	}
	public void setMessenge(String messenge) {
		this.messenge = messenge;
	}
	public LocalDateTime getSend_date() {
		return send_date;
	}
	public void setSend_date(LocalDateTime send_date) {
		this.send_date = send_date;
	}
	
	public Contact(Integer id, boolean status, String userName, String email, String messenge,
			LocalDateTime send_date) {
		super(id, status);
		this.userName = userName;
		this.email = email;
		this.messenge = messenge;
		this.send_date = send_date;
	}
	public Contact() {
		super();
	}
	
	
}
