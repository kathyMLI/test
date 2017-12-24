class AddEvaluations < ActiveRecord::Migration[5.1]
  def change
  	# t es un bloque de codigo
  	create_table :evaluations do |t|
  	#se agrega el campo name
  	t.references :course	
  	t.timestamps
  	end
  end
end
