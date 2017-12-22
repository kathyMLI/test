class AddCourses < ActiveRecord::Migration[5.1]
  def change
  	  	# t es un bloque de codigo
  	create_table :courses do |t|
  		#se agrega el campo name
  		t.string :name
  		#clave foranea(t.reference)-> tiene que ser singular
  		t.references :teacher
  		t.timestamps
  	end

  end
end
