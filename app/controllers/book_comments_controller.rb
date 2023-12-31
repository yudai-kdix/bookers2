class BookCommentsController < ApplicationController


  def create
    book = Book.find(params[:book_id])
    book_comment = BookComment.new(book_comment_params)
    book_comment.book_id = book.id
    book_comment.user_id = current_user.id
    book_comment.save
    redirect_to book_path(book)
  end
  def destroy
    BookComment.find(params[:id]).destroy
    redirect_to request.referer
  end
  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
end
