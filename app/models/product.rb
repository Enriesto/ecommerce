# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  validates :product_number, presence: true, uniqueness: true
  validates :quantity_in_stock, numericality: { only_integer: true }
  validates :description, length: { maximum: 500 }

  has_one_attached :image

  belongs_to :category
  has_many :order_products
  # accepts_nested_attributes_for :categories, allow_destroy: true
end
