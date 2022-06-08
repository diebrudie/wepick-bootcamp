class ParticipantsController < ApplicationController
  def new
    @participant = Participant.new
    @activity = Activity.find(params[:activity_id])
    @participants_ids = Participant.where(activity_id: @activity.id).map(&:user_id)
    @friendships_ids = (Friendship.where(asker: current_user).map(&:receiver_id) + Friendship.where(receiver: current_user).map(&:asker_id)).uniq
    @activity = Activity.find(params[:activity_id]).participants.where.not(user_id: @friendships_ids)
    @friends = User.where(id: @friendships_ids - @participants_ids)
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @participant = Participant.new(activity_id: params[:activity_id], user_id: params[:user])
    @participant.save!
    redirect_to activity_path(@activity)
  end

  def destroy

    @participant = Participant.find(params[:id])
    @participant.destroy
    redirect_to activity_participants_path(@participant.activity), status: :see_other
  end

  def index
    @activity = Activity.find(params[:activity_id])
    @participants = Participant.where(activity_id: @activity.id)
  end
end
