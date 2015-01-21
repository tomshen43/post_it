class Post < ActiveRecord::Base;
  belongs_to :user, foreign_key: "user_id"
  has_many :comments, foreign_key: "user_id"
  has_many :post_categories
  has_many :categories, through: :post_categories

  validates :title, presence: true
  validates :url, presence: true
  validates :description, presence: true
end