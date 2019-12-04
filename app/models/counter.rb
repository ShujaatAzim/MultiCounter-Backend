class Counter < ApplicationRecord

  has_many :counter_tags
  has_many :tags, :through => :counter_tags

end
