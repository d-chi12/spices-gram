class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
  attachment :profile_image
  has_many :recipes, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :comments

  validates :username, presence: true

  def already_favorited?(recipe)
    self.favorites.exists?(recipe_id: recipe.id)
  end
end
