class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
    @activity = Activity.find(params[:activity_id])
    @friendships = Friendship.where(asker: current_user).or(Friendship.where(receiver: current_user))
    @friends = []
  end

  def create

  end

  def index
    @activity = Activity.find(params[:activity_id])
    @participants = Participant.where(activity_id: @activity.id)
  end

end
