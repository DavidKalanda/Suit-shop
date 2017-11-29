class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  validates :amount, presence: true
end
