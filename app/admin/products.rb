# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :product_number, :name, :description, :price, :quantity_in_stock, :category_id, :image, categories_attributes: %i[id name _destroy]
  # Formtastic!
  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
      f.has_many :categories, allow_destroy: true do |n_f|
        n_f.input :category
      end
    end
    f.actions
  end
end
