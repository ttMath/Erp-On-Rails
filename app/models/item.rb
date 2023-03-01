class Item < ApplicationRecord
    validates :name, presence: true
    validates :stock, presence: true
    validates :price, presence: true
    has_many :items_sales
end
