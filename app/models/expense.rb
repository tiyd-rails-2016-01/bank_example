class Expense < ActiveRecord::Base
  has_many :receipts
end
