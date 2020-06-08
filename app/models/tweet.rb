class Tweet < ApplicationRecord
  has_many :comments
  validates :body, presence: true, length: { maximum: 140 }
end
