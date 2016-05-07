module API
	module V1
		class Chefs < Grape::API
			# http_basic_authenticate_with name: "admin", password: "secret"
			auth :grape_devise_token_auth, resource_class: :user

  			helpers GrapeDeviseTokenAuth::AuthHelpers

			resource :chefs do
				
				desc "Returns all chefs."
				get "" do
					# error!("401 Unauthorized", 401) unless authenticated
					authenticate_user!
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
					# binding.pry
					Chef.create!(params.except(:access_token))
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