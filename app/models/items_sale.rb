class ItemsSale < ApplicationRecord
  belongs_to :items
  belongs_to :sales


  attribute :quantity
  attribute :un_price, :decimal
end
