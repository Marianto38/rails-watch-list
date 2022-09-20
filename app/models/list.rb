class List < ApplicationRecord
  # Cuando borras una lista, debes borrar todos los bookmarks asociados a la misma
  # (pero no las películas ya que estas pueden estar referenciadas en otras listas).

  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks

  # Una lista debe tener un nombre único.

  validates :name, presence: true, uniqueness: true

  # cloudinary
  has_one_attached :photo
end
