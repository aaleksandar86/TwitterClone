class Tweet < ApplicationRecord
  validates :body, presence: true, length: { maximum: 40 }
end
