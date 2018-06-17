class Book < ApplicationRecord
  belongs_to :author
  has_many :upvotes
  has_many :preferring_users, through: :upvotes, source: :user

  scope :newly_created, -> (last_book) {
    where("books.created_at > ?", last_book.created_at)
  }
end
