class Article < ApplicationRecord

  # presence はnullを許容しない
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
end
