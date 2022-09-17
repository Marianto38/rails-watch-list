class Movie < ApplicationRecord
  has_many :bookmarks
  # Una película debe tener un título único y una descripción.
  validates :title, :overview, presence: true
  validates :title, uniqueness: true
end
