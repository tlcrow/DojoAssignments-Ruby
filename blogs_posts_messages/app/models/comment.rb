class Comment < ActiveRecord::Base
  belongs_to :opinions, polymorphic: true
end
