# == Schema Information
#
# Table name: menu_items_categories
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class MenuItemsCategory < ActiveRecord::Base

	has_many :menu_items

end
