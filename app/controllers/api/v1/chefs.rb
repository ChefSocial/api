module API
	module V1
		class Chefs < Grape::API
			include API::V1::Defaults

			resource :chefs do
				
				desc "Returns all chefs."
				get "" do
					Chef.all
				end	

				desc "Returns a chef."
				params do
					requires :id, type: String, desc: "Id of the chef"
				end
				get "/chef_id/:id" do
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