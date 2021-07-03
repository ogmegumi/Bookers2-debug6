class Favorite < ApplicationRecord
  #用途：ユーザーと投稿のセットでいいねをしている状態とする
#ユーザーは一つの投稿に一つしかいいねできないこと
  belongs_to :user
  belongs_to :book

end
