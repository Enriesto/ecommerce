# frozen_string_literal: true

ActiveAdmin.register Product do
  permit_params :product_number, :name, :description, order_products_attributes: %i[id product_id order_id _destroy]

  index do
    selectable_column
    column :id
    column :orders do |product|
      product.orders.map(&:order_number).join(', ').html_safe
    end
    actions
  end

  show do |_prod|
    attributes_table do
      row :name
      row :description
      row :product_number
      row :orders do |_prod|
        _prod.orders.map(&:order_number).join(', ').html_safe
      end
    end
  end
  # Formtastic!
  form do |f|
    f.semantic_errors
    f.inputs 'Product' do
      f.input :product_number
      f.input :name
      f.input :description
      f.has_many :order_products, allow_destroy: true do |n_f|
        n_f.input :order
      end
    end
    f.inputs do
      f.input :image, as: :file
      # f.has_many :categories, allow_destroy: true do |n_f|
      #   n_f.input :category
      # end
    end
    f.actions
  end
end
