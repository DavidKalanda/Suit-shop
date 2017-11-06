class Customer < ApplicationRecord
  validates :name, :password, :address, presence:true
end
