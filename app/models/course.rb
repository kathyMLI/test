class Course < ApplicationRecord
	belongs_to :teacher
	has_and_belongs_to_many :students
	has_many :evaluations
	#entrega el curso seleccionado
	def self.query1(courseSelected)
		if(Course.find_by(name: courseSelected) != nil)
		result = nil

		Course.where(name: courseSelected).find_each do |c|
			result = c.students
		end
		if result.empty?	
			p "No existen alumnos inscritos en este curso"
			true
		else
			result
		end
		
	else
		p "El curso ingresado no existe"
		true
		
	end
	end

	



end