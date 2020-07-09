class Recipe < ApplicationRecord
  attachment :image
  attachment :profile_image
  belongs_to :user
  has_many :favorites, dependent: :destroy
  has_many :comments

  with_options presence: true do
    validates :title
    validates :body
    validates :spice
    validates :quantity
    validates :image
  end
end
