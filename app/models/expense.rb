class Expense < ActiveRecord::Base
	belongs_to :user

	def self.dashboard(u_id)
		data=Expense.select("kind,sum(money) as total").where(user_id: u_id).group("kind")
		data.map{|d|[d.kind,d.total]}
	end
end