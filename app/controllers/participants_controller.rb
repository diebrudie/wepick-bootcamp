class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
    @activity = Activity.find(params[:activity_id])
    @participants_ids = Participant.where(activity_id: @activity.id).map(&:user_id)
    @friendships_ids = (Friendship.where(asker: current_user).map(&:receiver_id) + Friendship.where(receiver: current_user).map(&:asker_id)).uniq
    #Activity.find(params[:activity_id]).where.not(participant_id: @friendships_ids)
    @activity = Activity.find(params[:activity_id]).participants.where.not(user_id: @friendships_ids)
    @friends = User.where(id: @friendships_ids - @participants_ids)
  end

  def create
    @participant = Participant.new(participant_params)
    @activity.save!
    redirect_to activity_path(@activity)

  end

  def index
    @activity = Activity.find(params[:activity_id])
    @participants = Participant.where(activity_id: @activity.id)
  end

  private

  def participant_params
    params.require(:participant).permit(:user_id, :activity_id)
  end
end
