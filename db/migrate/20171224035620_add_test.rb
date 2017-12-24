class AddTest < ActiveRecord::Migration[5.1]
  def change
  	  	# t es un bloque de codigo
  		create_table :test do |t|
  		t.references :course
  		t.timestamps
  	end

  end
end
