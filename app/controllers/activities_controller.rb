class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    authorize @activity
  end
end
