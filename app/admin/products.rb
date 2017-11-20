ActiveAdmin.register Product do
  permit_params :name, :size,:price, :color, :fit, :image, :category_id

end
