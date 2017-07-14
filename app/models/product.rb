class Product < ApplicationRecord
  has_many :order_items
  validates :price, :name, :description, :image, :presence => true
end
