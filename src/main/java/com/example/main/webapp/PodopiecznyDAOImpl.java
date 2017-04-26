package com.example.main.webapp;

import com.example.main.webapp.models.Podopieczny;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by Tomek on 28.03.2017.
 */

public class PodopiecznyDAOImpl implements PodopiecznyDAO {
    private JdbcTemplate jdbcTemplate;

    public JdbcTemplate getJdbcTemplate() {
        return jdbcTemplate;
    }

    public void setJdbcTemplate(JdbcTemplate template) {
        this.jdbcTemplate=template;
    }


    @Override
    public void zapiszPodopiecznego(Podopieczny fb) {
        jdbcTemplate.update(zapisPacjenta, fb.getName(), fb.getAge());
    }

    @Override
    public void uaktualnijPodopiecznego(Podopieczny fb) {

    }

    @Override
    public Podopieczny pobierzPodopiecznego(int idPacjenta) {
        Podopieczny fbl=(Podopieczny)jdbcTemplate.queryForObject(this.football_select,
                new Object[]{new Integer(idPacjenta)},
                new RowMapper() {
                    public Object mapRow(ResultSet rs, int arg1) throws SQLException{
                        Podopieczny ftb=new Podopieczny();
                        ftb.setId(rs.getInt("id_ftb"));
                        ftb.setName(rs.getString("name"));
                        ftb.setAge(rs.getInt("age"));
                        return ftb;
                    }
                });
        return fbl;
    }

    private final String football_select="SELECT * FROM footballer WHERE id_ftb=?";
    private final String footballer_insert="INSERT INTO footballer (id_ftb,name,age) VALUES(?,?,?)";
    private final String zapisPacjenta="INSERT INTO podopieczny ()";
    //private final String footballer_update="UPDATE footballer SET ";
}
