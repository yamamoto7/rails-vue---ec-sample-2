class Api::SpecialsController < ApplicationController
	def show
		@items = Special.find(params[:id]).items
	end
end
