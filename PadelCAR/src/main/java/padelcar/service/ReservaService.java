package padelcar.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import padelcar.dao.IReservaDao;
import padelcar.model.Reserva;

@Service
@Transactional
public class ReservaService implements IReservaService{
	
	@Autowired
	IReservaDao reservaDao;
	
	@Override
	public List<Reserva> listReservas() {
		List<Reserva> listReservas = new ArrayList<>();
		listReservas = reservaDao.listReservas();
		return listReservas;
	}

	@Override
	public List<Reserva> findByCliente_Id(int cliente_id) {
		List<Reserva> listReservas = new ArrayList<>();
		listReservas = reservaDao.findByCliente_Id(cliente_id);
		return listReservas;

	}

	@Override
	public Reserva findReservaById(int id) {
		return reservaDao.findReservaById(id);
	}
	
	public void saveOrUpdate(Reserva reserva) {
		reservaDao.saveOrUpdate(reserva);
	}

	@Override
	public void deleteReserva(int id) {
		reservaDao.deleteReserva(id);
	}

}
