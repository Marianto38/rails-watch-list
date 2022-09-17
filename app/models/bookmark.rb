class Bookmark < ApplicationRecord
  # Un bookmark pertenece a una película
# Un bookmark pertenece a una lista
  belongs_to :movie
  belongs_to :list
# Un bookmark debe estar enlazado a una película y a una lista, y los pares [movie, list] deben ser únicos.
  validates :comment, presence: true, length: { minimum: 6}
  validates :list, :movie, presence: true
  validates :list, uniqueness: { scope: :movie}
end

# No se puede borrar una película si la misma está referenciada en al menos un bookmark.
