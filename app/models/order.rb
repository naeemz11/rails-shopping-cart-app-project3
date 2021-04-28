class Order < ApplicationRecord
    #checks the text field if it's empty
    validates :address, presence: true
    validates :item, presence: true, uniqueness: true 
    validates :price, presence: true
    validates :quantity, presence: true
end

#validates :email, presence: true, uniqueness: true {scope: username}
#if the username already esists with the same email, it will display 'taken'