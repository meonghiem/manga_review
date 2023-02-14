class AddMoreDetailUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :birthday, :date
    add_column :users, :phone, :string
    add_column :users, :location, :string
    add_column :users, :about, :text
    add_column :users, :gender, :string
    add_column :users, :name, :string
  end
end
