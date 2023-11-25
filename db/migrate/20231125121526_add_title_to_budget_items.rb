class AddTitleToBudgetItems < ActiveRecord::Migration[7.0]
  def change
    add_column :budget_items, :title, :string
    add_column :budget_items, :category, :string
    add_column :budget_items, :cost, :integer
    add_column :budget_items, :spent_date, :date
    add_column :budget_items, :wallet_id, :integer
  end
end
