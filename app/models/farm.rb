# == Schema Information
#
# Table name: farms
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Farm < ApplicationRecord
end
