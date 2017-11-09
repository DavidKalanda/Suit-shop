class Customer < ApplicationRecord
  has_many :orders
  validates :name, :password, :address, presence:true
end
