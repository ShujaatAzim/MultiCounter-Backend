class Counter < ApplicationRecord
  
  has_many :tags, through: :counter_tags

end
