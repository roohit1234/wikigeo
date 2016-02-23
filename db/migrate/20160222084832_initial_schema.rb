class InitialSchema < ActiveRecord::Migration
  def change

  	create_table :posts do |t|
  		t.string :title
  		t.text 	 :description
	end

	create_table :comments do |t|
		t.string :comment
	end	

	create_table :categories do |t|
		t.string :name
	end
		
  end
end
