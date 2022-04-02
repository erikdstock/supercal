# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

host_count = 3
event_hosts = host_count.times.map { FactoryBot.create(:event_host) }

9.times do |i|
  # cycle through hosts generating events
  host = event_hosts[(host_count + i) % host_count]

  FactoryBot.create(:event, event_host: host)
end
