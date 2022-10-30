# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ActiveRecord::Base.connection.execute("truncate table #{Apartment.table_name} restart identity;")
ActiveRecord::Base.connection.execute("truncate table #{Resort.table_name} restart identity;")

Resort.create([
                {name: 'Хилтон', email: 'mail@hillton.com'},
                {name: 'Сан-парк', email: 'mail@SanPark.com'}
              ])

Apartment.create([
                   {room_type: 'одномесный', description: '', resort_id: 1},
                   {room_type: 'двуместный', description: '', resort_id: 1},
                   {room_type: 'комфорт+', description: '', resort_id: 1},
                   {room_type: 'суперэконом', description: '', resort_id: 2},
                   {room_type: 'президентский', description: '', resort_id: 2},
                   {room_type: 'трехместный', description: '', resort_id: 2}
                 ])