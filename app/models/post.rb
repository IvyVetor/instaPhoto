class Post < ApplicationRecord
  validates :image, presence: true

  has_one_attached :image
  validates_acceptance_of :image, :content_type => /\Aimage\/.*\Z/
end
