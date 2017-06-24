package mx.isban.at.poc.bigdata.impala.jdbc;

import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.jdbc.core.JdbcTemplate;

/**
 * This class execute a SQL Sentence using Impala JDBC Driver
 * 
 * @author C682334
 *
 */
public class ImpalaJDBCHandler {

	private static final Logger LOG = LoggerFactory.getLogger(ImpalaJDBCHandler.class);

	@Autowired
	@Qualifier("impalaDataSource")
	private DataSource dataSource;

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}

	public ImpalaJDBCHandler() {
		// TODO Auto-generated constructor stub
	}

	public List<Map<String, Object>> executeQuery(String query) {
		List<Map<String, Object>> result = null;
		LOG.info("Start executeQuery.");
		// JDBC Code - Start
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		result = jdbcTemplate.queryForList(query);
		LOG.info("End executeQuery.");
		return result;
	}

}
