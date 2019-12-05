class Tag < ApplicationRecord

  has_many :counters, through: :counter_tags

end
