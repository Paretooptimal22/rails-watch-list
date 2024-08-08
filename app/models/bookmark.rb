class Bookmark < ApplicationRecord
  belongs_to :list
  belongs_to :movie
  validates :comment, length: { minimum: 6 }
  validates :movie, uniqueness: {
    scope: :list,
    message: "Only one comment per movie"
  }
end
