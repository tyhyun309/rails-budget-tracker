class RemoveBudgeUserIdFromBudgetWallets < ActiveRecord::Migration[7.0]
  def change
    remove_reference :budget_wallets, :budget_user, index: false, foreign_key: true
  end
end
