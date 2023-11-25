class AddBudgetWalletRefToBudgetItems < ActiveRecord::Migration[7.0]
  def change
    add_reference :budget_items, :budget_wallet, null: false, foreign_key: true
  end
end
