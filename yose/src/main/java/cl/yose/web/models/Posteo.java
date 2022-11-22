package cl.yose.web.models;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonIgnore;

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
@Table(name="posteos")
public class Posteo {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @NotNull
    @Size(min = 5, max = 40, message = "Error en el ingreso del titulo")
    private String titulo;
    
    @NotNull
    @Size(min = 5, max = 40, message = "Error en el ingreso del contenido del posteo")
    private String texto;
    
    private String url;
    
    @JsonIgnore
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name="usuario_id")
	private Usuario usuario;
    
    @JsonIgnore
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "categoria_id")
    private Categoria categoria;
    
    @JsonIgnore
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "typePosteo_id")
    private TypePosteo typePosteo;
    
    @JsonIgnore
    @OneToMany(mappedBy = "posteo",cascade = CascadeType.ALL,fetch = FetchType.LAZY)
	private List<ValoracionPosteo> valoracionesPosteos;
    
    @JsonIgnore
    @OneToMany(mappedBy = "posteo",cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    private List<Comentario> comentarios;
    
    @Column(updatable=false)
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date createdAt;
    
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date updatedAt;

	//atributos de control
    @PrePersist
    protected void onCreate() {
        this.createdAt = new Date();
    }
    //agregar a la columna la fecha despues de actualizar o cambiar valores de el registro
    @PreUpdate
    protected void onUpdate() {
        this.updatedAt = new Date();
    }


}
