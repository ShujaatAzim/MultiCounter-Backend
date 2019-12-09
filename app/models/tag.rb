class Tag < ApplicationRecord

  has_many :counter_tags
  has_many :counters, through: :counter_tags

end
