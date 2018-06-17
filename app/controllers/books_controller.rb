class BooksController < ApplicationController
  def index
    @user = current_user
    @books = Feed.new(current_user).retrieve
  end

  def refresh
    populate
    @user = current_user
    @new_books = Feed.new(current_user).refresh(params[:book_id])
    @books = Feed.new(current_user).retrieve.where.not(id: @new_books.ids)

    render 'index'
  end

  private

  def current_user
    User.find(params[:user_id])
  end

  def populate
    new_book = current_user.followed_authors.first.books.create(title: 'New book', published_on: Date.today)    
    Upvote.create(user: current_user, book: new_book)
  end
end

