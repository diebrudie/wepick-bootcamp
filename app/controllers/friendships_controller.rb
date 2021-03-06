class FriendshipsController < ApplicationController
  before_action :find_friendship, only: %i[show]

  def index
    @friendships = Friendship.where(asker: current_user).or(Friendship.where(receiver: current_user))
    @taking_part = current_user.participant_ids
  end

  def create
    @friendship = Friendship.new(asker_id: current_user.id, receiver_id: params[:receiver_id])
    @friendship.save!
    redirect_to friendships_path
  end
  def show; end

  def destroy
    @friend = User.find(params[:id])
    if Friendship.find_by(asker_id: current_user.id, receiver_id: @friend.id).present?
      @friendship = Friendship.find_by(asker_id: current_user.id, receiver_id: @friend.id)
    else
      @friendship = Friendship.find_by(asker_id: @friend.id, receiver_id: current_user.id)
    end
    @friendship.destroy

    redirect_to friendships_path, status: :see_other
  end

  private

  def find_friendship
    @friendship = User.find(params[:id])
  end
end
