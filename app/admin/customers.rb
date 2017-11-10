ActiveAdmin.register Customer do
  permit_params :name, :password, :address, :order_id
end
