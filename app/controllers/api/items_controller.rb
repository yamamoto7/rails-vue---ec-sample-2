class Api::ItemsController < ApplicationController
	def news
		@items = Item.all.order(created_at: :desc)
	end
	def index
		
	end
	def specials_home
		@specials = Special.all
		# @specials = Special.all.where(status: :home)
	end
	def specials_home_item
		@items = Special.find(params[:id]).items
	end
	def show
		@item = Item.find(params[:id])
		@status = 0
		if user_signed_in? then
			@status = 1
			if current_user.items.find(params[:id]) then
				@status = 2
			end
		end
	end
end
