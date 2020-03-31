# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :product_number, :name, :description, :price, :quantity_in_stock, :category_id, :image, categories_attributes: %i[id name _destroy]

  # index do
  #   selectable_column
  #   column :id
  #   column :name
  #   column :categories do |_product|
  #     product.categories.map(&:name).join(', ').html_safe
  #   end
  #   actions
  # end

  # show do |_product|
  #   attributes_table do
  #     row :name
  #     row :categories do |_product|
  #       _product.categories.map(&:name).join(', ').html_safe
  #     end
  #   end
  # end
  # Formtastic!
  form do |f|
    f.semantic_errors
    f.inputs
    f.inputs do
      f.input :image, as: :file
      # f.has_many :categories, allow_destroy: true do |n_f|
      #   n_f.input :category
      # end
    end
    f.actions
  end
end
