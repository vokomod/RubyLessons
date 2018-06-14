require 'sqlite3'
db = SQLite3::Database.new 'barbershop'

# db.execute "insert into 'users' (name, date) values ('mick', 'tomorrow')"

db.execute "select * from 'users'" do |user|
  puts user
  puts "============="
end

puts "-----------------"
db.execute "select * from 'contacts'" do |item|
  puts item
  puts "============="
end

db.close
