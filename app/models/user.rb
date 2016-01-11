# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string
#  image      :string
#  address    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :confirmable, :omniauthable
  include DeviseTokenAuth::Concerns::User

	has_many :bookings

end
