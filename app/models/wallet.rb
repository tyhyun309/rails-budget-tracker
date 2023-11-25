class Wallet < ApplicationRecord
  self.table_name = 'budget_wallets'
  has_many :items, dependent: :destroy, foreign_key: 'budget_wallet_id'
  belongs_to :user, optional: true, foreign_key: 'budget_user_id'
end
