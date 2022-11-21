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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@ToString
@Entity
@Table(name = "recovers")
public class Recover {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)	
	private Long id;

	@NotNull
	@Size(min = 8, max = 30, message = "Error en el largo contraseña")
	private String code;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;	

	// atributos de control
	@PrePersist
	protected void onCreate(){
		this.createdAt = new Date();
		}
	@PreUpdate
	protected void onUpdate(){
		this.updatedAt = new Date();
		}

}
