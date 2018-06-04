package si.feri.ost.ost.demo.db;

import si.feri.ost.ost.demo.entities.*;
import java.util.List;
import java.util.ArrayList;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Component;



@Component
public class OsebaDao {
    
    @Autowired
    JdbcTemplate jdbcTemplate;


public List<Oseba> getAllOsebe(){
        String sql = "SELECT * FROM OSEBA"; //sql query
        List<Oseba> ret = new ArrayList<Oseba>();
        List<Map<String,Object>> rows = jdbcTemplate.queryForList(sql);
        for (Map row : rows) {
            String ime = (String)row.get("Ime");
            String priimek = (String)row.get("Priimek");

            ret.add(new Oseba(ime,priimek));
        }
        return ret;
    }
}
