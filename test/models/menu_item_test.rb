# == Schema Information
#
# Table name: menu_items
#
#  id                     :integer          not null, primary key
#  menu_id                :integer
#  name                   :string
#  menu_items_category_id :integer
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#

require 'test_helper'

class MenuItemTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
