class CreateMangas < ActiveRecord::Migration[6.0]
  def change
    create_table :mangas do |t|
      t.string :title
      t.integer :category_id
      t.integer :author_id
      t.text :description

      t.timestamps
    end
  end
end
