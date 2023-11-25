class AddBudgetUserRefToBudgetWallets < ActiveRecord::Migration[7.0]
  def change
    add_reference :budget_wallets, :budget_user, null: false, foreign_key: true
  end
end
