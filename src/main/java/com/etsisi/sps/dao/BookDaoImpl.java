package com.etsisi.sps.dao;

import com.etsisi.sps.model.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class BookDaoImpl implements BookDao {

	NamedParameterJdbcTemplate namedParameterJdbcTemplate;

	@Autowired
	public void setNamedParameterJdbcTemplate(NamedParameterJdbcTemplate namedParameterJdbcTemplate)
            throws DataAccessException {
		this.namedParameterJdbcTemplate = namedParameterJdbcTemplate;
	}

	@Override
	public Book findById(Integer id) {

		Map<String, Object> params = new HashMap<String, Object>();
		params.put("id", id);

		String sql = "SELECT * FROM books WHERE id=:id";

		Book result = null;
		try {
			result = namedParameterJdbcTemplate.queryForObject(sql, params, new BookMapper());
		} catch (EmptyResultDataAccessException e) {

		}
		return result;

	}

	@Override
	public List<Book> findAll() {

		String sql = "SELECT * FROM books";
		List<Book> result = namedParameterJdbcTemplate.query(sql, new BookMapper());

		return result;

	}

	@Override
	public void save(Book book) {

		KeyHolder keyHolder = new GeneratedKeyHolder();

		String sql = "INSERT INTO books(author,title,price,description) "
				+ "VALUES ( :author, :title, :price, :description)";

		namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(book), keyHolder);
		book.setId(keyHolder.getKey().intValue());

	}

	@Override
	public void update(Book book) {
		String sql = "UPDATE books SET AUTHOR=:author, TITLE=:title, PRICE=:price, DESCRIPTION=:description WHERE id=:id";
		namedParameterJdbcTemplate.update(sql, getSqlParameterByModel(book));
	}

	@Override
	public void delete(Integer id) {

		String sql = "DELETE FROM books WHERE id= :id";
		namedParameterJdbcTemplate.update(sql, new MapSqlParameterSource("id", id));
	}

	private SqlParameterSource getSqlParameterByModel(Book book) {

		// Unable to handle List<String> or Array
		// BeanPropertySqlParameterSource

		MapSqlParameterSource paramSource = new MapSqlParameterSource();
		paramSource.addValue("id", book.getId());
		paramSource.addValue("author", book.getAuthor());
		paramSource.addValue("title", book.getTitle());
		paramSource.addValue("price", book.getPrice());
		paramSource.addValue("description", book.getDescription());

		return paramSource;
	}

	private static final class BookMapper implements RowMapper<Book> {

		public Book mapRow(ResultSet rs, int rowNum) throws SQLException {
			Book book= new Book();
			book.setId(rs.getInt("id"));
			book.setAuthor(rs.getString("author"));
			book.setTitle(rs.getString("title"));
			book.setPrice(rs.getDouble("price"));
			book.setDescription(rs.getString("description"));
			return book;
		}
	}
}