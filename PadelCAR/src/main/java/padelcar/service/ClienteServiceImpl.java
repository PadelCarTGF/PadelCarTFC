package padelcar.service;

import java.util.ArrayList;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import padelcar.dao.IClienteDao;
import padelcar.model.Cliente;

@Service
@Transactional
public class ClienteServiceImpl implements IClienteService {

	@Autowired
	IClienteDao clienteDao;
	
	@Override
	public List<Cliente> listAllClientes() {
		List<Cliente> listClientes = new ArrayList<>();
		listClientes = clienteDao.listAllClientes();
		return listClientes;
	}

	@Override
	public void saveOrUpdate(Cliente cliente) {
		clienteDao.saveOrUpdate(cliente);
	}

	@Override
	public Cliente findClienteById(int id) {
		return clienteDao.findClienteById(id);
	}

	@Override
	public void deleteCliente(int id) {
		clienteDao.deleteCliente(id);
	}

	@Override
	public Cliente findClienteByEmail(String email) {
		return clienteDao.findClienteByEmail(email);
	}

	@Override
	public Cliente findClienteByPassword(String password) {
		return clienteDao.findClienteByPassword(password);
	}

}
