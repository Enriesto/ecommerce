# frozen_string_literal: true

class Order < ApplicationRecord
  validates :order_number, presence: true

  belongs_to :statuses, :users
  has_many :order_products
end
