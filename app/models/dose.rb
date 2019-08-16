class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  validates :description, presence: true, allow_blanck: false
  validates_uniqueness_of :ingredient, scope: :cocktail_id
end
