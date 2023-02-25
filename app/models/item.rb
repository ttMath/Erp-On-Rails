class Item < ApplicationRecord
    validates :name, presence: true
    validates :stock, presence: true
end
