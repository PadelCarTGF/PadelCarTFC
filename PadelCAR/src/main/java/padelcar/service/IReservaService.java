package padelcar.service;

import java.sql.Date;
import java.sql.Time;

import java.util.List;

import org.springframework.stereotype.Service;

import padelcar.model.Reserva;

@Service
public interface IReservaService {
	public List<Reserva> listReservas();

//	public void save(Reserva reserva);

	public List<Reserva> findByCliente_Id(int cliente_id);

//	public Reserva findByCliente_idAndFechaAndHora(int cliente_id, Date fecha, Time hora);

//	void deleteReserva(Date date, Time time);
	
	public Reserva findReservaById(int id);
	
	public void saveOrUpdate(Reserva reserva);

	public void deleteReserva(int id);

}
