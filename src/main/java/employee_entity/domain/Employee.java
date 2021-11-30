package employee_entity.domain;

/**
 * User object
 * 
 * @author Kai Qi && Aji 
 * 
 */
public class Employee {
	/*
	 * Correspond to the user table
	 */
	
	private Integer store_id;
	private String first_name;
	private String last_name;
	private String gender;
	private String position;
	private String email;
	/**
	 * @return the store_name
	 */
	/**
	 * @return the employee_id
	 */
	public Integer getStore_id() {
		return store_id;
	}
	/**
	 * @param employee_id the employee_id to set
	 */
	public void setStore_id(Integer store_id) {
		this.store_id = store_id;
	}
	/**
	 * @return the first_name
	 */
	public String getFirst_name() {
		return first_name;
	}
	/**
	 * @param first_name the first_name to set
	 */
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	/**
	 * @return the last_name
	 */
	public String getLast_name() {
		return last_name;
	}
	/**
	 * @param last_name the last_name to set
	 */
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	/**
	 * @return the gender
	 */
	public String getGender() {
		return gender;
	}
	/**
	 * @param gender the gender to set
	 */
	public void setGender(String gender) {
		this.gender = gender;
	}
	/**
	 * @return the position
	 */
	public String getPosition() {
		return position;
	}
	/**
	 * @param position the position to set
	 */
	public void setPosition(String position) {
		this.position = position;
	}
	/**
	 * @return the email
	 */
	public String getEmail() {
		return email;
	}
	/**
	 * @param email the email to set
	 */
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Employee [employee_id=" + store_id + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", gender=" + gender + ", position=" + position + ", email=" + email + "]";
	}
	
	
	
}
