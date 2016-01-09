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

class MenuItem < ActiveRecord::Base

	belongs_to :menu
	belongs_to :menu_items_category

end
