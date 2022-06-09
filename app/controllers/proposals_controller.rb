class ProposalsController < ApplicationController
  def show
    @proposal = Proposal.find(params[:id])
    @activity = Activity.find(params[:activity_id])
  end

  def new
    @activity = Activity.find(params[:activity_id])
    @proposal = Proposal.new
  end

  def create
    @activity = Activity.find(params[:activity_id])
    @proposal = Proposal.new(proposal_params)
    @proposal.activity = @activity
    @proposal.user = current_user
    @proposal.save!
    redirect_to activity_proposal_path(@activity, @proposal)
  end

  def destroy
    @proposal = Proposal.find(params[:id])
    @activity = @proposal.activity
    @proposal.destroy

    # No need for app/views/restaurants/destroy.html.erb
    redirect_to activity_path(@activity), status: :see_other
  end

  private

  def proposal_params
    params.require(:proposal).permit(:title, :description)
  end
end
