class Customer < ApplicationRecord
    validates :name, presence: true
    validates :email, presence: true
    validates :phone, length: { maximum:11 }
    
    
    
end
