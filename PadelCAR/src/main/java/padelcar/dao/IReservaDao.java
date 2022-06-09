package padelcar.dao;

import java.sql.Date;
import java.sql.Time;
import java.util.List;

import padelcar.model.Reserva;

public interface IReservaDao {
	public List<Reserva> listReservas();

	public void save(Reserva reserva);

	public List<Reserva> findByCliente_Id(int cliente_id);

	public void deleteReserva(Date date, Time time);

	public Reserva findByCliente_idAndFechaAndHora(int cliente_id, Date fecha, Time hora);


}
