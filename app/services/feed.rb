class Feed
  def initialize(user)
    @user = user
  end

  def retrieve
    @user.preferred_books.order(:title)
  end

  def refresh(last)
    @user.preferred_books.newly_created(Book.find(last))
  end
end