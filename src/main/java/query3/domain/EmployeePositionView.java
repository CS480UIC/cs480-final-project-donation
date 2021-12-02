package query3.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Aji
 */
public class EmployeePositionView {
	private String concat;
	private String position;
	public String getConcat() {
		return concat;
	}
	public void setConcat(String concat) {
		this.concat = concat;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	@Override
	public String toString() {
		return "EmployeePositionView [concat=" + concat + ", position=" + position + "]";
	}
	
}
