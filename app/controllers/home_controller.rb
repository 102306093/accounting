class HomeController < ApplicationController
	def dashboard
		@data=Expense.dashboard(current_user.id)
	end
end
