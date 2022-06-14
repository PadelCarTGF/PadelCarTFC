package padelcar.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import padelcar.model.Reserva;


@Repository
public class ReservaDaoImpl implements IReservaDao{
	
	@Autowired
	private SessionFactory sessionFactory;

	private Session getSession() {
		return sessionFactory.getCurrentSession();
	}
	

	@Override
	public void save(Reserva reserva) {
		getSession().saveOrUpdate(reserva);
		
	}

	@Override
	public List<Reserva> findByCliente_Id(int cliente_id) {
		Criteria criteria = getSession().createCriteria(Reserva.class);
		return (List<Reserva>) criteria.list();
	}

	public void saveOrUpdate(Reserva reserva) {
		getSession().saveOrUpdate(reserva);
	}

	public Reserva findReservaById(int id) {
		Reserva reserva = (Reserva) getSession().get(Reserva.class, id);

		return reserva;
	}

	public void deleteReserva(int id) {
		Reserva reserva = (Reserva) getSession().get(Reserva.class, id);
		getSession().delete(reserva);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<Reserva> listReservas() {
		Criteria criteria = getSession().createCriteria(Reserva.class);
		return (List<Reserva>) criteria.list();
	}

}
