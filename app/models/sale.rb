class Sale < ApplicationRecord
  belongs_to :customers
  has_many :items_sales
  has_many :items, through: :items_sales

  attribute :total, :decimal
end