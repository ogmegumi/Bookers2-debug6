class BookCommentsController < ApplicationController
	before_action :authenticate_user!
<<<<<<< HEAD
	
  def create
    @book = Book.find(params[:book_id])
    @book_comment = BookComment.new(book_comment_params)
    @book_comment.book_id = @book.id
    @book_comment.user_id = current_user.id
    @book_comment.save
    #redirect_to book_path(@book.id)
  end
  
  def destroy
   @book = Book.find(params[:book_id])
   BookComment.find_by(id: params[:id], book_id: params[:book_id]).destroy
   #redirect_to book_path(params[:book_id])
  end
  
  private

  def book_comment_params
    params.require(:book_comment).permit(:comment)
  end
  
=======

	def create
		@book = Book.find(params[:book_id])
		@book_comment = BookComment.new(book_comment_params)
		@book_comment.book_id = @book.id
		@book_comment.user_id = current_user.id
		if @book_comment.save
  		redirect_to book_path(@book.id)
		else
		  render 'books/show'
		end
	end

	def destroy
		@book = Book.find(params[:book_id])
  	book_comment = @book.book_comments.find(params[:id])
		book_comment.destroy
		redirect_to request.referer
	end

	private
	def book_comment_params
		params.require(:book_comment).permit(:comment)
	end
>>>>>>> origin/main
end
