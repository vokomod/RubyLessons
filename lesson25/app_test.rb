require 'sqlite3'
db = SQLite3::Database.new 'test'

# db.execute "insert into 'first table' (name, price) values ('jaguar', 888)"

db.execute "select * from 'first table'"  do |car|
  puts car
  puts "============="
end
db.close
