package queries.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Aji
 */
public class BiggerAvgSalesView {
	/*View members */
	private Integer sales_id;
	/**
	 * @return the sales_id
	 */
	public Integer getSales_id() {
		return sales_id;
	}
	/**
	 * @param sales_id the sales_id to set
	 */
	public void setSales_id(Integer sales_id) {
		this.sales_id = sales_id;
	}
	/**
	 * @return the order_id
	 */
	public Integer getOrder_id() {
		return order_id;
	}
	/**
	 * @param order_id the order_id to set
	 */
	public void setOrder_id(Integer order_id) {
		this.order_id = order_id;
	}
	/**
	 * @return the total_amount
	 */
	public BigDecimal getTotal_amount() {
		return total_amount;
	}
	/**
	 * @param total_amount the total_amount to set
	 */
	public void setTotal_amount(BigDecimal total_amount) {
		this.total_amount = total_amount;
	}
	private Integer order_id;
	private BigDecimal total_amount;
	@Override
	public String toString() {
		return "BiggerAvgSalesView [sales_id=" + sales_id + ", order_id=" + order_id + ", total_amount=" + total_amount
				+ "]";
	}
	
	
}
