class AddNameToBudgetWallets < ActiveRecord::Migration[7.0]
  def change
    add_column :budget_wallets, :budget, :integer
    add_column :budget_wallets, :spent, :integer
    add_column :budget_wallets, :name, :string
  end
end
