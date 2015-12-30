module API  
  module V1
    class Graduates < Grape::API
      include API::V1::Defaults

      resource :graduates do
        
        desc "Returns all Graduates"
        get "", root: :graduates do
          Graduate.all
        end

        desc "Returns a graduate"
        params do
          requires :id, desc: "ID of the Graduate"
        end
        get ":id", root: "graduate" do
          Graduate.where(id: permitted_params[:id]).first!
        end

        desc "Creates a new Graduate"
        params do
          requires :desc, type: String, desc: "Description of the new Graduate" 
        end
        post do
          Graduate.create!(desc: params[:desc])
        end

        desc "Deletes a Graduate"
        params do
          requires :id, desc: "ID of the Graduate to be deleted."
        end
        delete ':id' do
          Graduate.find_by_id(params[:id]).destroy
        end

      end
    end
  end
end