class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :recipe

  validates_presence_of :comment
  validates_presence_of :user_id
  validates_presence_of :recipe_id
  
end
