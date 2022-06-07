class ProfilesController < ApplicationController
  def show
    @friendship = User.find(params[:id])
  end
end
