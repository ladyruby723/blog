class Post < ApplicationRecord
  belongs_to :contributor
  validates :contributor, presence: true
  validates :content, presence: true
end
