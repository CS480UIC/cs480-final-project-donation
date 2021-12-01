package order.service;

public class OrderException extends Exception {

    /**
     * implement any exception here
     */
    private static final long serialVersionUID = 1L;

    public OrderException() {
        super();
    }

    public OrderException(String message) {
        super(message);
    }

}
