class ActivitiesController < ApplicationController
  before_action :find_activity, only: %i[show edit update destroy]

  def index
    @activities_user = Activity.all.where("user_id = #{current_user.id}")
    @participants_user = Activity.joins(:participants).where(participants: { user_id: current_user.id }).where.not(id: @activities_user.map {|activity| activity.id})
    @join_array = (@activities_user + @participants_user).sort_by(&:activity_date)
    @activity = Activity.new
    @form_title = "Create new Activity"

    if params[:query].present?
      @activities_user = @activities_user.where("title ILIKE ?", "%#{params[:query]}%")
      @participants_user = @participants_user.where("title ILIKE ?", "%#{params[:query]}%")
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: 'list', locals: { activities: @activities_user, participants_user: @participants_user }, formats: :html }
    end

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

  def edit
  end

  def update
    @activity.update(activity_params)
    redirect_to activity_path(@activity)
  end

  def destroy
    @activity.destroy
    redirect_to activities_path, status: :see_other
  end

  private

  def find_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:title, :activity_date, :deadline_date, :anonymity, :activity_type, :description, :photo)
  end
end
