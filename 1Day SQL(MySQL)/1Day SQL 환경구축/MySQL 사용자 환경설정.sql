create user 'SQLDB'@localhost identified by '1234';

GRANT ALL PRIVILEGES ON SQLDB.* TO 'SQLDB'@localhost; 
set global log_bin_trust_function_creators='ON';

SELECT @@global.sql_mode;
SET global sql_mode = '';

COMMIT;