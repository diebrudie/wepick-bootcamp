class FriendshipsController < ApplicationController
  before_action :find_friendship, only: %i[show]

  def index
    @friendships = Friendship.where(asker: current_user).or(Friendship.where(receiver: current_user))
    @taking_part = current_user.participant_ids
  end

  def show; end

  def destroy
    @friend = User.find(params[:id])
    @friendship = Friendship.find_by(receiver_id: @friend) # .or.find_by(asker_id: @friend)

    @friendship.destroy
    redirect_to friendships_path, status: :see_other
  end

  private

  def find_friendship
    @friendship = User.find(params[:id])
  end
end
