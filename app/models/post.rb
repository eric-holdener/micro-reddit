class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  validates :title,
            presence: true,
            uniqueness: true,
            length: { maximum: 255 }
  validates :text, presence: true
  validates :user_id, presence: true
end
