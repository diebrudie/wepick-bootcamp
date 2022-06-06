class FriendshipsController < ApplicationController
  before_action :find_friendship, only: %i[show destroy]

  def index
    @friendships = Friendship.where(asker: current_user).or(Friendship.where(receiver: current_user))
  end

  def show; end

  def destroy
    @friendship.destroy
    redirect_to friendship_path(@friendship), status: :see_other
  end

  private

  def find_friendship
    @friendship = User.find(params[:id])
  end
end
