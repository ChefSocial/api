# == Schema Information
#
# Table name: reviews
#
#  id          :integer          not null, primary key
#  description :string
#  rating      :float
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Review < ActiveRecord::Base

	belongs_to :chef
	
end
