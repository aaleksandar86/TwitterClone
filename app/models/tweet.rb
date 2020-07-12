class Tweet < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :body, presence: true, length: { maximum: 140 }
end
