require 'pg'

c = PGconn.connect("192.168.50.129", 5432, '', '', "postgres", "postgres", "1234")
#Delete test table named foo
c.exec( "DROP TABLE IF EXISTS foo" )
#Create tables foo
c.exec( "CREATE TABLE foo (id serial not null, name varchar, profile varchar, CONSTRAINT foo_pkey PRIMARY KEY (id));" )
c.prepare('statement1', 'insert into foo (id, name, profile) values ($1, $2, $3)')
c.exec_prepared('statement1', [11, 'J.R. "Bob" Dobbs', 'Too much is always better than not enough.'])
