class Post < ApplicationRecord
  belongs_to :user

  validates :title, presence: true, uniqueness: true
  validates :text, presence: true
  validates :user_id, presence: true
end
