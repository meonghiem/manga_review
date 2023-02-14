class AddDetailToCategories < ActiveRecord::Migration[6.0]
  def change
    add_column :categories, :detail, :string
  end
end
