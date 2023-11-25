class Item < ApplicationRecord
  self.table_name = 'budget_items'
  belongs_to :wallet, foreign_key: 'budget_wallet_id'
end
