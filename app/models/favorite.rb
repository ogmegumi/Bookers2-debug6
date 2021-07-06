class Favorite < ApplicationRecord
<<<<<<< HEAD
  #用途：ユーザーと投稿のセットでいいねをしている状態とする
#ユーザーは一つの投稿に一つしかいいねできないこと
  belongs_to :user
  belongs_to :book

=======
	belongs_to :user
	belongs_to :book
	validates_uniqueness_of :book_id, scope: :user_id
>>>>>>> origin/main
end
