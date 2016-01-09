# == Schema Information
#
# Table name: event_cuisines
#
#  id         :integer          not null, primary key
#  menu_id    :integer
#  cuisine_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class EventCuisineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
