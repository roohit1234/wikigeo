class AddAboutToUsers < ActiveRecord::Migration
  def change
    add_column :users, :about, :text
    add_column :users, :name, :string
  end
end
