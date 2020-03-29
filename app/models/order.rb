# frozen_string_literal: true

class Order < ApplicationRecord
  validates :order_number, presence: true

  belongs_to :statuses
  belongs_to :users
  has_many :order_products
end
