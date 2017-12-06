ActiveAdmin.register Customer do
  permit_params :name, :password, :address, :order_id, :province_id, :email
end
