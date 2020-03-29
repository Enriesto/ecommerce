# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :product_number, :name, :description, :price, :quantity_in_stock, :category_id, :image

  # Formtastic!
  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
    end
    f.actions
  end
end
