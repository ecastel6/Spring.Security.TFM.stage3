package com.etsisi.sps.config;

import javax.annotation.PostConstruct;
import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabase;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseBuilder;
import org.springframework.jdbc.datasource.embedded.EmbeddedDatabaseType;

@Configuration
public class SpringDBConfig {

	@Autowired
	DataSource dataSource;

	/*@Bean
	public JdbcTemplate getJdbcTemplate() {
		return new JdbcTemplate(dataSource);
	}*/

	@Bean
	public NamedParameterJdbcTemplate getNamedParameterJdbcTemplate() {
		return new NamedParameterJdbcTemplate(dataSource);
	}

	@Bean
	public DataSource getDataSource() {
		EmbeddedDatabaseBuilder builder = new EmbeddedDatabaseBuilder();
		EmbeddedDatabase db = builder.setName("sampleshop").setType(EmbeddedDatabaseType.HSQL)
				.addScript("sql/springDDL.sql").addScript("sql/springDML.sql").build();
		return db;
	}

	@PostConstruct
	public void startDBManager() {
		// hsqldb
		// DatabaseManagerSwing.main(new String[] { "--url",
		// "jdbc:hsqldb:mem:testdb", "--user", "sa", "--password", "" });
	}

}