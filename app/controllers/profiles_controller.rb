class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])  # Mario/profile
    @taking_part = current_user.participant_ids
    @activities_my = Activity.joins(:participants).where(participants: { user_id: current_user.id })
    @activities_his = Activity.joins(:participants).where(participants: { user_id: @user.id })
    @activities_together = (@activities_his & @activities_my).sort_by(&:activity_date)
  end

  def index
    @users = User.all
  end
end
