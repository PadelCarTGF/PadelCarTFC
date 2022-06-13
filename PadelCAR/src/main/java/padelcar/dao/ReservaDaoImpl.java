package padelcar.dao;

import java.sql.Date;
import java.sql.Time;
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
	
	@SuppressWarnings("unchecked")
	@Override
	public List<Reserva> listReservas() {
		Criteria criteria = getSession().createCriteria(Reserva.class);
		return (List<Reserva>) criteria.list();
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

	@Override
	public Reserva findByCliente_idAndFechaAndHora(int cliente_id, Date fecha, Time hora) {
		Reserva reserva = (Reserva) getSession().get(Reserva.class, null);
		return reserva;
	}

	@Override
	public void deleteReserva(Date date, Time time) {
		Reserva reserva = (Reserva) getSession().get(Reserva.class,null );
		getSession().delete(reserva);
		
	}

}
