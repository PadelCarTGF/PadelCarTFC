package padelcar.model;

import java.sql.Date;
import java.sql.Time;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="reserva")
public class Reserva {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	
	@Column(name = "cliente_id")
	private int cliente_id;
	

	@Column(name = "nombre_pista")
	private String nombre_pista;
	

	@Column(name = "fecha")
	private Date fecha;
	

	@Column(name = "hora")
	private Time hora;
	
	
	@Column(name = "num_jugadores")
	private int num_jugadores;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCliente_id() {
		return cliente_id;
	}

	public void setCliente_id(int cliente_id) {
		this.cliente_id = cliente_id;
	}

	public String getNombre_pista() {
		return nombre_pista;
	}

	public void setNombre_pista(String nombre_pista) {
		this.nombre_pista = nombre_pista;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public Time getHora() {
		return hora;
	}

	public void setHora(Time hora) {
		this.hora = hora;
	}

	public int getNum_jugadores() {
		return num_jugadores;
	}

	public void setNum_jugadores(int num_jugadores) {
		this.num_jugadores = num_jugadores;
	}
	
	
}
