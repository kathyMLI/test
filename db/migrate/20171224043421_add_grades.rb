class AddGrades < ActiveRecord::Migration[5.1]
  def change
  	  	  	# t es un bloque de codigo
  		create_table :grades do |t|
  		t.references :evaluation
  		t.references :student
  		t.decimal :mark
  		t.timestamps
  	end
  end
end
