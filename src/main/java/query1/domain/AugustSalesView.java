package query1.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Aji
 */
public class AugustSalesView {
	private Integer order_id;
	private String order_date;
	private Integer count;
	private String orderstatus;
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
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getOrderstatus() {
		return orderstatus;
	}
	public void setOrderstatus(String orderstatus) {
		this.orderstatus = orderstatus;
	}
	@Override
	public String toString() {
		return "AugustSalesView [order_id=" + order_id + ", order_date=" + order_date + ", count=" + count
				+ ", orderstatus=" + orderstatus + "]";
	}
	
	
	
}
