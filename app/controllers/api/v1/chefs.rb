module API
	module V1
		class Chefs < Grape::API
			# http_basic_authenticate_with name: "admin", password: "secret"

			resource :chefs do
				
				desc "Returns all chefs."
				get "" do
					# error!("401 Unauthorized", 401) unless authenticated
					Chef.all
				end	

				desc "Returns a chef."
				params do
					requires :id, type: String, desc: "Id of the chef"
				end
				get "/:id" do
					chef = Chef.find_by_id(params[:id])
					# binding.pry
				end

				desc "Creates a new chef."
				# params do
				# 	requires :body, documentation: {
				# 		type: String, 
				# 		desc: "Post request body for creating a chef",
				# 		param_type: "body"
				# 	}
				# 	# requires :image, type: String, desc: "Image url of the chef"
				# end
				post do
					Chef.create!(params)
				end

				# desc "Deletes a chef."
				# params do
				# 	requires :id, desc: "Id of the chef to be deleted"
				# end
				# delete ":id" do
				# 	Chef.find_by_id(params[:id]).destroy
				# end

			end
		end
	end
end