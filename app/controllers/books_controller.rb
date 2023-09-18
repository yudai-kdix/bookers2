class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  def create
    
  end
  def update
    
  end
  def edit
    @book = Book.find(params[:id])
  end
  def show
    
  end
end
