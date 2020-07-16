class Post < ApplicationRecord
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  belongs_to :user
  has_many :comments
end