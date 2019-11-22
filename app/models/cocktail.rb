class Cocktail < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  validates :name, presence: true, uniqueness: true, allow_blanck: false
  # validates :photo, presence: true
end
