class CreateBudgetWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :budget_wallets do |t|

      t.timestamps
    end
  end
end
