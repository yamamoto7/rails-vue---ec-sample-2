class Special < ApplicationRecord
	has_many :special_items
	has_many :items, through: :special_items

	enum status: [:home, :published, :closed]
end
