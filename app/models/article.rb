class Article < ApplicationRecord
  has_one_attached:image
  belongs_to :user
  has_many :vote, foreign_key: 'article_id', dependent: :destroy
  has_one :category, foreign_key: 'article_id', dependent: :destroy
  validates :title, presence: true, length: {minimum: 3, maximum: 50}

  validates :text, presence: true, length: {minimum: 10, maximum: 300}
  validates :image, presence: true
  validates :user_id, presence: true
end
