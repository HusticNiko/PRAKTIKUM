package login.sumit.registration;

public interface CustomerDAO {
	
	public int insertCustomer(Customer c);
	public Customer getCustomer(String ID, String password);
	
	public int insertSlicice(Customer a);

}
