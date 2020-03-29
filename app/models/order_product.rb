# frozen_string_literal: true

class OrderProduct < ApplicationRecord
  belongs_to :products
  belongs_to :orders
end
