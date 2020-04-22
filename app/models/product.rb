# frozen_string_literal: true

class Product < ApplicationRecord
  validates :name, presence: true
  validates :product_number, presence: true, uniqueness: true
  validates :quantity_in_stock, numericality: { only_integer: true }
  validates :description, length: { maximum: 500 }

  has_one_attached :image
  paginates_per 5

  belongs_to :category
  has_many :order_products
  has_many :orders, through: :order_products
  accepts_nested_attributes_for :order_products, allow_destroy: true
end
