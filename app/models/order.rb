class Order < ApplicationRecord
  validates :amount, presence: true
end
