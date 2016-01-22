module API  
  class Base < Grape::API
    include V1::Defaults
    # include V1::Authentication

    before do
      error!("401 Unauthorized", 401) unless authenticated
    end

    helpers do
      # def warden
      #   env['warden']          
      # end        

      def authenticated
        # return true if warden.authenticated?
        params[:access_token] && @user = User.find_by_authentication_token(params[:access_token])
      end

      def current_user
        # warden.user || @user
        @user
      end
    end

    # Mounting should be done after the 'before' filter
    mount API::V1::Base

  end
end 