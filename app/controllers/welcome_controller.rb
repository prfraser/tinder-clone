class WelcomeController < ApplicationController
	before_action :authenticate_user!
	def index
		if current_user.gender == 'male'
			@users = User.where(gender: 'female')
		else
			@users = User.where(gender: 'male')
		end
	 end
end
