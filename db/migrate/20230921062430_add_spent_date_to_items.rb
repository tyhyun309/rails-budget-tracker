class AddSpentDateToItems < ActiveRecord::Migration[7.0]
  def change
    add_column :items, :spent_date, :date
  end
end
