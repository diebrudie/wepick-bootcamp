class ActivitiesController < ApplicationController
  before_action :find_activity, only: %i[show edit update destroy]

  def index
    #@activities = Activity.all
    @activities_user = Activity.all.where("user_id = #{current_user.id}")
    @activity = Activity.new
    @form_title = "Create new Activity"
  end

  def show; end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save!
      redirect_to activity_path(@activity)
    else
      render :index
    end
  end

  def update
    @form_title = "Activity Settings"
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activity_path(@activity), status: :see_other
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :activity_date, :deadline_date, :anonymity, :activity_type, :description, :photo)
  end
end
