package cl.yose.web.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name="valoraciones")

public class Valoracion {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int valoracionId;
	
	private Boolean meGusta;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;	

	public Valoracion() {
		super();
	}

	public Valoracion(int valoracionId, Boolean meGusta) {
		super();
		this.valoracionId = valoracionId;
		this.meGusta = meGusta;
	}

	public int getValoracionId() {
		return valoracionId;
	}

	public void setValoracionId(int valoracionId) {
		this.valoracionId = valoracionId;
	}

	public Boolean getMeGusta() {
		return meGusta;
	}

	public void setMeGusta(Boolean meGusta) {
		this.meGusta = meGusta;
	}
	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}

	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}

		// atributos de control
		@PrePersist
		protected void onCreate(){
			this.createdAt = new Date();
			}
		@PreUpdate
		protected void onUpdate(){
			this.updatedAt = new Date();
			}

		@Override
		public String toString() {
			return "Valoracion [valoracionId=" + valoracionId + ", meGusta=" + meGusta + ", createdAt=" + createdAt
					+ ", updatedAt=" + updatedAt + "]";
		}
	
}
