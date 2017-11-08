ActiveAdmin.register Product do
  permit_params :name, :size, :color, :fit, :image, :category_id

end
