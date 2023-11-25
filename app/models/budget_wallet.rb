class BudgetWallet < ApplicationRecord
  belongs_to :budget_user, optional: true
end
