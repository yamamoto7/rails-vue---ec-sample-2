class Order < ApplicationRecord
	has_many :sold_items
	has_many :rented_items
end
