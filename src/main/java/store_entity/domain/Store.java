package store_entity.domain;

/**
 * User object
 * 
 * @author Kai Qi && Aji 
 * 
 */
public class Store {
	/*
	 * Correspond to the user table
	 */
	
	private String store_name;
	private String address; 
	private String phone;
	private String email;
	/**
	 * @return the store_name
	 */
	public String getStore_name() {
		return store_name;
	}
	/**
	 * @param store_name the store_name to set
	 */
	public void setStore_name(String store_name) {
		this.store_name = store_name;
	}
	/**
	 * @return the address
	 */
	public String getAddress() {
		return address;
	}
	/**
	 * @param address the address to set
	 */
	public void setAddress(String address) {
		this.address = address;
	}
	/**
	 * @return the phone
	 */
	public String getPhone() {
		return phone;
	}
	/**
	 * @param phone the phone to set
	 */
	public void setPhone(String phone) {
		this.phone = phone;
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
		return "Store [store_name=" + store_name + ", address=" + address + ", phone=" + phone + ", email=" + email
				+ "]";
	}
	
	
	
}
