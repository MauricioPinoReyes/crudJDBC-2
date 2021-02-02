package cl.crudjdbc2.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;


import cl.crudjdbc2.modelo.Contactos;

public class ContactosDao {

	JdbcTemplate template;
	
	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}
	
	public List<Contactos> getContactos(){
	    return template.query("select * from contactos",new RowMapper<Contactos>(){    
	        public Contactos mapRow(ResultSet rs, int row) throws SQLException {    
	            Contactos c=new Contactos();
	            c.setId(rs.getInt(1));
	            c.setNombreproveedor(rs.getString(2));
	            c.setDireccion(rs.getString(3));
	            c.setComuna(rs.getString(4));
	            return c;
	        }
	    });  
	}
	
	public int guardarContacto(Contactos c) {
		String sql = "insert into contactos (nombreproveedor,direccion,comuna) values ('" + c.getNombreproveedor() + "','" + c.getDireccion() + "','" + c.getComuna() + "')";
		
		return template.update(sql);
	}
	
	public int editarContacto(Contactos c) {
		String sql = "update contactos set nombreproveedor = '" + c.getNombreproveedor() + "', direccion = '" + c.getDireccion() + "', comuna = '"+ c.getComuna() +"'where id = '" + c.getId() + "'";
		return template.update(sql);		
	}
	
	
}
