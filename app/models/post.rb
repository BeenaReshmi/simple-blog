class Post < ApplicationRecord
  belongs_to :author
  has_many :elements
  has_many :comments
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
