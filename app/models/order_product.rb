# frozen_string_literal: true

class OrderProduct < ApplicationRecord
  belongs_to :products, :orders
end
