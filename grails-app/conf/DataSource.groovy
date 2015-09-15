dataSource {
    pooled = true
	driverClassName = "org.postgresql.Driver"
    jmxExport = true
    username = "postgres"
    password = "admin"
	logSQL = false
	url = "jdbc:postgresql://localhost/mobilemoney"
}

hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
	// cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory' // Hibernate 3
    cache.region.factory_class = 'org.hibernate.cache.ehcache.EhCacheRegionFactory' // Hibernate 4
    singleSession = true // configure OSIV singleSession mode
    flush.mode = 'manual' // OSIV session flush mode outside of transactional context
}

// environment specific settings
// See http://grails.org/doc/latest/guide/conf.html#dataSource for documentation
// dbCreate = one of 'create', 'create-drop', 'update', 'validate', ''
environments {
    development {
        dataSource {
            dbCreate = "update" 
            // url = "jdbc:postgresql://localhost/mobilemoney"
        }
    }
    test {
        dataSource {
            dbCreate = "update" 
            // url = "jdbc:postgresql://localhost/mobilemoney"
        }
    }
    production {
        dataSource {
            dbCreate = "update" 
            // url = "jdbc:postgresql://localhost/mobilemoney"
//            properties {
//               jmxEnabled = true
//               initialSize = 5
//               maxActive = 50
//               minIdle = 5
//               maxIdle = 25
//               maxWait = 10000
//               maxAge = 10 * 60000
//               timeBetweenEvictionRunsMillis = 5000
//               minEvictableIdleTimeMillis = 60000
//               validationQuery = "SELECT 1"
//               validationQueryTimeout = 3
//               validationInterval = 15000
//               testOnBorrow = true
//               testWhileIdle = true
//               testOnReturn = false
//               jdbcInterceptors = "ConnectionState"
//               defaultTransactionIsolation = java.sql.Connection.TRANSACTION_READ_COMMITTED
//            }
        }
    }
}
