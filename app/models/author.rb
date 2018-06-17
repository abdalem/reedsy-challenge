class Author < ApplicationRecord
  has_many :books
  has_many :follows
  has_many :following_users, through: :follows, source: :user
end
