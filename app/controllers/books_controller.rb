class BooksController < ApplicationController
  def index
  end

  def new
    @book = Book.new
  end
end
