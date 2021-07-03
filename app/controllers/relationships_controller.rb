class RelationshipsController < ApplicationController
  def create #フォロー作成
   current_user.follow(params[:user_id])
   redirect_to request.referer
  end
  # follow,unfollow method使用user modelからmethod呼び出し
  
  def destroy #フォロー削除
   current_user.unfollow(params[:user_id])
   redirect_to request.referer
  end
  
  #————————フォロー・フォロワー一覧を表示する-————————————
  def followings
    user = User.find(params[:user_id])
    @users = user.followings
  end

  def followers
    user = User.find(params[:user_id])
    @users = user.followers
  end
end
