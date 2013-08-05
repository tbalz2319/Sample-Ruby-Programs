require 'pg'

conn = PGconn.connect("192.168.50.129", 5432, '', '', "postgres", "postgres", "1234")
res  = conn.exec('select * from arson')

res.each do |row|
  row.each do |column|
   puts column
  end
end
