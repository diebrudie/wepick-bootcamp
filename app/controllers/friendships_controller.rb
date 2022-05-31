class FriendshipsController < ApplicationController
  def show_friends
    @friendships = Friendship.where(asker: current_user).or(Friendship.where(receiver: current_user))
  end
end
