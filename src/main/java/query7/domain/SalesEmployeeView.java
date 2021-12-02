package query7.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Aji
 */
public class SalesEmployeeView {
	/*View members */
	private String last_name;
	private String first_name;
	public String getLast_name() {
		return last_name;
	}
	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}
	public String getFirst_name() {
		return first_name;
	}
	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}
	@Override
	public String toString() {
		return "SalesEmployeeView [last_name=" + last_name + ", first_name=" + first_name + "]";
	}
	
	
	
}
