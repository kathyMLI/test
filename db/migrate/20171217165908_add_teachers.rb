class AddTeachers < ActiveRecord::Migration[5.1]
  def change
  	  	# t es un bloque de codigo
  	create_table :teachers do |t|
  		#se agrega el campo name
  		t.string :name
  		t.timestamps
  	end

  end
end
