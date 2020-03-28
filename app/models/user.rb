# frozen_string_literal: true

class User < ApplicationRecord
  validates :email, confirmation: true
  validates :password, length: { minimum: 8 }

  has_many :orders, :addresses
end
