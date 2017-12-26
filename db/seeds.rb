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
Student.destroy_all
Evaluation.destroy_all
Grade.destroy_all

teacher = Teacher.create([{ :name => 'Carla' }, { :name => 'Ana' }])

student = Student.create([{ :name => 'Maxo' }, { :name => 'Jeldes' }])

course = Course.create([{:name => 'Programación', :teacher => teacher.first},
 {:name => 'Calculo', :teacher => teacher.second},
 {:name => 'Algebra', :teacher => teacher.second}])


evaluation = Evaluation.create([
	{ :course => course.first },
	{ :course => course.first },
	{ :course => course.first }, 
	{ :course => course.second },
	{ :course => course.second },
	{ :course => course.second }
	])

grade = Grade.create([
	{:evaluation => evaluation.first,:student => student.first, :mark => 7.0},
	{:evaluation => evaluation.second,:student => student.first, :mark => 6.0},
	{:evaluation => evaluation.third,:student => student.first, :mark => 1.0},

	{:evaluation => evaluation.first,:student => student.second, :mark => 3.0},
	{:evaluation => evaluation.second,:student => student.second, :mark => 2.0},
	{:evaluation => evaluation.third,:student => student.second, :mark => 1.0},
	{:evaluation => evaluation[3],:student => student.second, :mark => 4.0},
	{:evaluation => evaluation[4],:student => student.second, :mark => 5.0},
	{:evaluation => evaluation[5],:student => student.second, :mark => 1.0}
	])



###################
student1 = Student.find_by(name: 'Maxo')
student2 = Student.find_by(name: 'Jeldes')


student1.courses << Course.find_by(name: 'Programación')
student2.courses << Course.find_by(name: 'Programación')
student2.courses << Course.find_by(name: 'Calculo')

#QUERY 1: ENTREGAR LISTA DE ALUMNOS PARA EL CURSO PROGRAMACION
p "Query 1"

resultQuery1 = Course.query1("Programación")

if(resultQuery1!= true)
	#pp resultQuery1

	resultQuery1.each do |s|
		p s.name
	end	
end

#QUERY 2: ENTREGAR EL PROMEDIO DE NOTAS DE UN ALUMNO EN UN CURSO
p "QUERY 2"
resultQuery2 = Student.haveCourse("Programación","Maxo")
if(resultQuery2 != true)
	p resultQuery2
end
#QUERY 3: ENTREGAR A LOS ALUMNOS Y AL PROMEDIO QUE TIENE EN CADA CURSO
p "QUERY 3"
resultQuery3 = Student.courseStudent

resultQuery3.each do |final|
	p final[0]
	final[1].each do |prom|
		p prom [0]
		p prom [1]
	end
end

#QUERY 4: ENTREGAR A LOS ALUMNOS CON MAS DE UN PROMEDIO ROJO
p "QUERY 4"
resultQuery4 = Student.redProm

resultQuery4.each do |final|
	p final[0]
	final[1].each do |prom|
		p prom [0]
		p prom [1]
	end
end
p "end"



