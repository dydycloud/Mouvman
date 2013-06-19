class OccasionsController < InheritedResources::Base
	belongs_to :event
	actions :all, :except => [:show, :index]
	
	def begin_of_association_chain
		current_user
	end
end
