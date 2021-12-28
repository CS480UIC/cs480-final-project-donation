package query6.domain;
import java.math.BigDecimal;
/**
 * User object
 * @author Kai Qi && Aji
 */
public class TotalOrderView {
	/*View members */
	private String order_status;
	private String total_sales;
	private Integer recent_month;
	private String today_time;
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public String getTotal_sales() {
		return total_sales;
	}
	public void setTotal_sales(String total_sales) {
		this.total_sales = total_sales;
	}
	public Integer getRecent_month() {
		return recent_month;
	}
	public void setRecent_month(Integer recent_month) {
		this.recent_month = recent_month;
	}
	public String getToday_time() {
		return today_time;
	}
	public void setToday_time(String today_time) {
		this.today_time = today_time;
	}
	@Override
	public String toString() {
		return "TotalOrderView [order_status=" + order_status + ", total_sales=" + total_sales + ", recent_month="
				+ recent_month + ", today_time=" + today_time + "]";
	}
	
	
}
