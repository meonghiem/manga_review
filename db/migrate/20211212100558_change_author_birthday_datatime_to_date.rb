class ChangeAuthorBirthdayDatatimeToDate < ActiveRecord::Migration[6.0]
  def change
      change_column :authors, :birthday, :date
  end
end
