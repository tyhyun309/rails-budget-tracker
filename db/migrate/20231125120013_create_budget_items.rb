class CreateBudgetItems < ActiveRecord::Migration[7.0]
  def change
    create_table :budget_items do |t|

      t.timestamps
    end
  end
end
