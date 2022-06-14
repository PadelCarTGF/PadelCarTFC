package padelcar.service;

import java.util.List;

import org.springframework.stereotype.Service;

import padelcar.model.Reserva;

@Service
public interface IReservaService {
	
	public List<Reserva> listReservas();

	public List<Reserva> findByCliente_Id(int cliente_id);
	
	public Reserva findReservaById(int id);
	
	public void saveOrUpdate(Reserva reserva);

	public void deleteReserva(int id);

}
