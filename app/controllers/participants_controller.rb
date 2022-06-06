class ParticipantsController < ApplicationController
  def create
  end
  def index
    @activity = Activity.find(params[:activity_id])
    @participants = Participant.where(activity_id: @activity.id)

  end

end
