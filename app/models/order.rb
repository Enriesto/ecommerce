# frozen_string_literal: true

class Order < ApplicationRecord
  validates :order_number, presence: true

  belongs_to :status
  belongs_to :user
  has_many :order_products
  has_many :products, through: :order_products
end
