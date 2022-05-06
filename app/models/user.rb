class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
end
