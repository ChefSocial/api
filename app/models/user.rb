# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  provider               :string           default("email"), not null
#  uid                    :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  name                   :string
#  nickname               :string
#  image                  :string
#  email                  :string
#  address                :string
#  tokens                 :json
#  created_at             :datetime
#  updated_at             :datetime
#  authentication_token   :string

# this model has access to these methods valid_token?, create_new_auth_token, build_auth_header

class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

	has_many :bookings

	# attr_accessible :name, :email, :authentication_token

	before_save :ensure_authentication_token

	def ensure_authentication_token
		self.authentication_token ||= generate_authentication_token
	end


	private

	def generate_authentication_token
		loop do
			token = Devise.friendly_token
			break token unless User.where(authentication_token: token).first
		end
	end

end
