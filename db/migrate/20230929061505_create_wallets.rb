class CreateWallets < ActiveRecord::Migration[7.0]
  def change
    create_table :wallets do |t|
      t.integer :budget
      t.integer :spent

      t.timestamps
    end
  end
end
