class User < ApplicationRecord
  has_many :upvotes
  has_many :follows
  has_many :preferred_books, through: :upvotes, source: :book
  has_many :followed_authors, through: :follows, source: :author
end
