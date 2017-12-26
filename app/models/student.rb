class Student < ApplicationRecord
	has_and_belongs_to_many :courses
	has_many :grades
		

	def self.haveCourse(courseSelected, studentSelected)
		if Course.find_by(name: courseSelected) != nil

			if Student.find_by(name: studentSelected) !=nil

				studentFind = Student.find_by(name: studentSelected)
				finalResult = nil
				resultSearch = false
				studentFind.courses.each do |c|
					if(c.name == courseSelected)

							resultSearch = true
							break
					end
				end
				
				if resultSearch

					evaluationCourse(Course.find_by(name: courseSelected),studentSelected)
				else
					p "el alumno no esta en este curso"
					true
				end

			else
				p "el alumno ingresado no existe"
				true
			end
		else
			p "el curso ingresado no existe"
			true
		end

	end

	def self.evaluationCourse(idCourseSelected,studentSelected)
		
		evaluation = []
		Evaluation.where(course: idCourseSelected).find_each do |c|
			
			evaluation << c
		end

		result = getGrades(evaluation,studentSelected)
	end
	
	def self.getGrades(evaluation, studentSelected)
		
		sum = 0
		prom = 0
		
		Student.where(name: studentSelected).find_each do |c|
		
			marks = c.grades
		
		
			c.grades.each do |j|
				

				if evaluation.include?(j.evaluation)		
				
					sum = sum + j.mark
					prom = prom + 1

				end

			end
			
			
		end
		if sum!=0
			result = sum/prom
			result
		else
			p "El alumno no tiene notas ingresadas"
			1
		end
	end	
	def self.courseStudent
		coursesProm = []
		finalResult = []
		Student.find_each do |s|
			s.courses.each do |c|
				resultProm = [c.name,Student.haveCourse(c.name, s.name)]
				coursesProm << resultProm
			end
			
			finalResult << [s.name,coursesProm]
			coursesProm = []
			
		end
		finalResult
	end

	def self.redProm
		contRed = 0
		coursesProm = []
		finalResult = []
		Student.find_each do |s|
			s.courses.each do |c|
				prom = Student.haveCourse(c.name, s.name)
				if prom < 4
					contRed+=1
				end
				resultProm = [c.name, prom]
				coursesProm << resultProm
			end
			if contRed!=0
				finalResult << [s.name,coursesProm]
			end
			coursesProm = []
		end
		finalResult
	end
end