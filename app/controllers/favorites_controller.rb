class FavoritesController < ApplicationController
  def create
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorites.new(book_id: @book.id)
    @favorite.save
    redirect_to book_path(@book)
  end
  
  def destroy
    @book = Book.find(params[:book_id])
    @favorite = current_user.favorites.find_by(book_id: @book.id)
    @favorite.destroy
    redirect_to book_path(@book)
    #自分のコメントしか削除できないこと
#コメント, コメント削除後は行う前の画面に遷移すること
  end
end
