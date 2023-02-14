class CreateAuthors < ActiveRecord::Migration[6.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.datetime :birthday
      t.text :story

      t.timestamps
    end
  end
end
