ActiveAdmin.register Contact do
  permit_params :number, :email, :address
end
