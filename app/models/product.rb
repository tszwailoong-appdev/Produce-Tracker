# == Schema Information
#
# Table name: products
#
#  id                  :integer          not null, primary key
#  photo               :string
#  units_in_stock      :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  farm_id             :integer
#  product_category_id :integer
#
class Product < ApplicationRecord
end
