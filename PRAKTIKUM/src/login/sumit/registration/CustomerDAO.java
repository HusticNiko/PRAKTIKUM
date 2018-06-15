package login.sumit.registration;

public interface CustomerDAO {
	
	public int insertCustomer(Customer c);
	public Customer getCustomer(String ID, String password);
	public Customer getCustomer2(String ID);
	
	public int insertSlicice(Customer a);

}
