module API
	module V1
		class Menus < Grape::API
			include API::V1::Defaults

			resource :menus do
				
				desc "Returns all menus."
				get "" do
					Menu.all
				end	

				desc "Returns a Menu."
				params do
					requires :id, type: String, desc: "Id of the Menu"
				end
				get ":id" do
					Menu.find_by_id(params[:id])
				end

				# desc "Creates a new Menu."
				# params do
				# 	requires :body, documentation: {
				# 		type: String, 
				# 		desc: "Post request body for creating a Menu",
				# 		param_type: "body"
				# 	}
				# 	# requires :image, type: String, desc: "Image url of the Menu"
				# end
				# post do
				# 	# binding.pry
				# 	Menu.create!(params)
				# end

				# desc "Deletes a Menu."
				# params do
				# 	requires :id, desc: "Id of the Menu to be deleted"
				# end
				# delete ":id" do
				# 	Menu.find_by_id(params[:id]).destroy
				# end

			end
		end
	end
end