module V1
	class CourseApi < Grape::API


	  resource :courses do
	      desc 'Return all courses'
	      get do
	        present Course.all, with: Entities::CourseEntity
	      end

		   post do
	#	   		Account.create_with_params(params)
		   end

		   put do
	#	   		Account.update_with_params(params)
		   end

		   delete do
	#	   		Account.destroy_with_params(params)
		   end
		end
	end
end