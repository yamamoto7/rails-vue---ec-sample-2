class Category < ApplicationRecord
	belongs_to :category_group
	has_many :category_items
	has_many :items, through: :category_items
end
