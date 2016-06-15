class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def profiles
    @users = User.all
  end

  def follow(other_user)
    active_relationships.create(followed_id: other_user.id)
  end

  def unfollow(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end

  def following?(other_user)
    following.include?(other_user.id)
  end
end
