class ActivitiesController < ApplicationController
  before_action :find_activity, only: %i[show edit destroy]

  def index
    @activities = Activity.all
    @activity = Activity.new
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.save
    redirect_to activity_path(@activity)
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :activity_date, :deadline_date, :anonymity, :activity_type, :description)
  end
end
