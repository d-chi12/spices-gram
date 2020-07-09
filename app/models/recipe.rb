class Recipe < ApplicationRecord
  attachment :image
  belongs_to :user
  has_many :favorites, dependent: :destroy

  with_options presence: true do
    validates :title
    validates :body
    validates :spice
    validates :image
  end
end
