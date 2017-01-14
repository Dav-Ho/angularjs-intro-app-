class User < ApplicationRecord
  has_many :orders
  has_many :carted_products

  validates :name, presence: true
end
