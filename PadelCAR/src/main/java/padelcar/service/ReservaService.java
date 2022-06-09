package padelcar.service;

import java.sql.Date;
import java.sql.Time;
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
	public void save(Reserva reserva) {
		reservaDao.save(reserva);
		
	}

	@Override
	public List<Reserva> findByCliente_Id(int cliente_id) {
		List<Reserva> listReservas = new ArrayList<>();
		listReservas = reservaDao.findByCliente_Id(cliente_id);
		return listReservas;

	}

	@Override
	public void deleteReserva(Date date, Time time) {
		reservaDao.deleteReserva(date, time);
		
	}

	@Override
	public Reserva findByCliente_idAndFechaAndHora(int cliente_id, java.sql.Date fecha, Time hora) {
		Reserva reserva = new Reserva();
		reserva = reservaDao.findByCliente_idAndFechaAndHora(cliente_id, fecha, hora);
		return reserva;
	}

	

}
