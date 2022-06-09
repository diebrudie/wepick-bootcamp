class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @taking_part = current_user.participant_ids
    @activities_my = Activity.joins(:participants).where(participants: { user_id: current_user.id })
    @activities_his = Activity.joins(:participants).where(participants: { user_id: @user.id })
    @activities_together = (@activities_his & @activities_my).sort_by(&:activity_date)
    @activities = Activity.all.where("user_id = #{current_user.id}")
  end

  def index
    @asker_ids = Friendship.where(asker_id: current_user).map(&:receiver_id)
    @receiver_ids = Friendship.where(receiver_id: current_user).map(&:asker_id)
    @myself = [current_user.id]
    @friends_ids = @asker_ids + @receiver_ids
    @everybody_ids = User.all.map(&:id)
    @no_friends = User.where(id: @everybody_ids - @friends_ids - @myself)
  end
end
