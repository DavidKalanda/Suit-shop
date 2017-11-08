class Product < ApplicationRecord
  belongs_to :category

  mount_uploader :image ,ImagesUploader
  validates :name, :size, :color, :image, presence:true
end
