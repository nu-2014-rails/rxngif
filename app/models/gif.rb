class Gif < ActiveRecord::Base
  has_many :comments
  has_many :tag_associations
end
