package padelcar.dao;

import java.util.List;

import padelcar.model.Reserva;

public interface IReservaDao {
	public List<Reserva> listReservas();

	public void save(Reserva reserva);

	public List<Reserva> findByCliente_Id(int cliente_id);
	
	public void saveOrUpdate(Reserva reserva);

	public Reserva findReservaById(int id);

	public void deleteReserva(int id);



}
