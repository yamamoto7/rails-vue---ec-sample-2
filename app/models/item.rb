class Item < ApplicationRecord
	has_many :carts
	has_many :sold_items
	has_many :rented_items
	has_many :category_items
	has_many :categories, through: :category_items
	has_many :special_items
	has_many :specials, through: :special_items
	has_many :favorites

	def self.new_items(count)
		return self.order(created_at: :desc).first(count)
	end
end
