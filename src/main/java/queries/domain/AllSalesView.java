package queries.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Ajitesh 
 */
public class AllSalesView {
	/*View members */
  private String first_name;
  private String last_name;
  private Integer employee_id;
/**
 * @return the employee_id
 */

/**
 * @return the first_name
 */
public String getFirst_name() {
	return first_name;
}
/**
 * @return the employee_id
 */
public Integer getEmployee_id() {
	return employee_id;
}
/**
 * @param employee_id the employee_id to set
 */
public void setEmployee_id(Integer employee_id) {
	this.employee_id = employee_id;
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
@Override
public String toString() {
	return "AllSalesView [first_name=" + first_name + ", last_name=" + last_name + ", employee_id=" + employee_id + "]";
}


	
	
}
