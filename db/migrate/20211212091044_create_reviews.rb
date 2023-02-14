class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :user_id
      t.integer :manga_id
      t.text :comment

      t.timestamps
    end
  end
end
