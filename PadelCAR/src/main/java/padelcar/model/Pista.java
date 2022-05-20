package padelcar.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;

@Entity
@Table(name="reserva")
public class Pista {
	@Id
	private int id;
	
	@NotNull
	@Column(name = "nombre")
	private String nombre;
	
	@NotNull
	@Column(name = "ocupada")
	private Boolean ocupada;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public Boolean getOcupada() {
		return ocupada;
	}

	public void setOcupada(Boolean ocupada) {
		this.ocupada = ocupada;
	}
	
	
	
}
