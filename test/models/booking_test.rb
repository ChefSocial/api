# == Schema Information
#
# Table name: bookings
#
#  id         :integer          not null, primary key
#  menu_id    :string
#  user_id    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class BookingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
