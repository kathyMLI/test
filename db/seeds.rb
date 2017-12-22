# ruby encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#http://www.railszilla.com/rails-seed-data-example/rails
#http://www.railszilla.com/rails-seed-data-example/rails
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Teacher.destroy_all
Course.destroy_all

teacher = Teacher.create([{ :name => 'Carla' }, { :name => 'Ana' }])
Course.create(:name => 'Programación', :teacher => teacher.first)

p "Created tables"
