class Wallet < ApplicationRecord
  has_many :items, dependent: :destroy
  belongs_to :user, optional: true
end
