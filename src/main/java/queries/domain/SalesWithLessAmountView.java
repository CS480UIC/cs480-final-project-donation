package queries.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Ajitesh 
 */
public class SalesWithLessAmountView {
	/*View members */
  private String first_name;
  private String last_name;
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
@Override
public String toString() {
	return "OrderUserView [first_name=" + first_name + ", last_name=" + last_name + "]";
}
	
	
}
