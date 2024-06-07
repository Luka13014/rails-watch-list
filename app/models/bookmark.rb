class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list
  validates_uniqueness_of :movie, :list
  validates :comment, length: { minimum: 6 }
end
