package query5.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Aji
 */
public class MinTotalView {
	/*View members */
	private Integer order_id;
	private String order_date;
	private BigDecimal min;
	public Integer getOrder_id() {
		return order_id;
	}
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	public String getOrder_date() {
		return order_date;
	}
	public void setOrder_date(String order_date) {
		this.order_date = order_date;
	}
	public BigDecimal getMin() {
		return min;
	}
	public void setMin(BigDecimal min) {
		this.min = min;
	}
	@Override
	public String toString() {
		return "MinTotalView [order_id=" + order_id + ", order_date=" + order_date + ", min=" + min + "]";
	}
	
	
}
