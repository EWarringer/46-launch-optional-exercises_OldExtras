require 'csv'
require 'pg'
require 'pry'

# def db_connection
#   begin
#     connection = PG.connect(dbname: "korning")
#     yield(connection)
#   ensure
#     connection.close
#   end
# end

mass_health = CSV.readlines('mass-chip-data.csv')

mass_health.each do |row|
  binding.pry
end
