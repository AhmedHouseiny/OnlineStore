require 'faker'
require 'csv'
CSV.foreach(Rails.root.join("db/seeds_data/movies.csv"), headers: true) do |row|
  Product.create([{
                      name:row[0],description: row[3],price: row[2]
                  },])
end

p  "created #{Product.count} entries."