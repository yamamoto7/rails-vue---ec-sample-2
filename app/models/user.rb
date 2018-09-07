class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	has_many :carts
	has_many :orders
	has_many :favorites
	has_many :items, through: :favorites
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
