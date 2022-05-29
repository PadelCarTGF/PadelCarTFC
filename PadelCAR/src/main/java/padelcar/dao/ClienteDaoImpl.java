package padelcar.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import padelcar.model.Cliente;

@Repository
public class ClienteDaoImpl implements IClienteDao {
	
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Cliente> listAllClientes() {
		Criteria criteria = getSession().createCriteria(Cliente.class);
		return (List<Cliente>) criteria.list();
	}

	@Override
	public void saveOrUpdate(Cliente cliente) {
		getSession().saveOrUpdate(cliente);
		
	}

	@Override
	public Cliente findClienteById(int id) {
		Cliente cliente = (Cliente) getSession().get(Cliente.class, id);
		return cliente;
	}

	@Override
	public void deleteCliente(int id) {
		Cliente cliente = (Cliente) getSession().get(Cliente.class, id);
		getSession().delete(cliente);
		
	}

	@Override
	public Cliente findClienteByEmail(String email) {
		Cliente cliente = (Cliente) getSession().get(Cliente.class, email);
		return cliente;
	}

	@Override
	public Cliente findClienteByPassword(String password) {
		Cliente cliente = (Cliente) getSession().get(Cliente.class, password);
		return cliente;
	}

}
