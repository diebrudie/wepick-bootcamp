class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.where(asker: current_user).or(Friendship.where(receiver: current_user))
  end
end
