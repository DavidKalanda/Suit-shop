class Product < ApplicationRecord
  belongs_to :category
  mount_uploader :image, ImagesUploader
  validates :name, :size, :color, :image, :price,  presence:true

  def self.keyword_search(keywords)
    keywords = "%" + keywords + "%"
    @result = Product.where("name LIKE ?", keywords)

  end
end
