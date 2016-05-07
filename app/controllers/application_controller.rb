# Has access to the following methods before_action :authenticate_user!, current_user, user_signed_in?, devise_token_auth_group
# The concern also runs an after_action that changes the auth token after each request.
class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

		
	
end
