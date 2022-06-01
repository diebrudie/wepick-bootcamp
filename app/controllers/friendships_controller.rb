class FriendshipsController < ApplicationController
  def index
    @friendships = Friendship.where(asker: current_user).or(Friendship.where(reciever: current_user))
  end
end
