class TagAssociation < ActiveRecord::Base
  belongs_to :gif
  belongs_to :tag
end
