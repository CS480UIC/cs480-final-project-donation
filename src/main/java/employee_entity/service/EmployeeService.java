package employee_entity.service;


import java.util.List;

import employee_entity.dao.EmployeeDao;
import employee_entity.domain.Employee;


/**
 * logic functions such as create
 * @author Kai Qi and Ajitesh Bansal
 *
 */
public class EmployeeService {
	private EmployeeDao employeeDao = new EmployeeDao();
	
	/**
	 * register a Entity1
	 * @param form
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public void create(Employee form) throws EmployeeException, ClassNotFoundException, InstantiationException, IllegalAccessException{
		// check the primary key of Entity1
		Employee employee = employeeDao.findByEmployee_name(form.getFirst_name(),form.getLast_name());
		if(employee.getFirst_name()!=null && employee.getLast_name()!= null && employee.getFirst_name().equals(form.getFirst_name()) && employee.getLast_name().equals(form.getLast_name())  ) throw new EmployeeException("This employee's name has been registered!");
		employeeDao.add(form);
	}
	/**
	 * Login function
	 * @param form
	 * @return
	 * @throws UserException 
	 * @throws ClassNotFoundException 
	 * @throws IllegalAccessException 
	 * @throws InstantiationException 
	 */
	public List<Object> findall() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
		return employeeDao.findall();
		
	}
}
