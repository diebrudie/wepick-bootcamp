class VotesController < ApplicationController
  before_action :find_proposal, only: %i[create]

  def create
    @vote = Vote.new
    @vote.user = current_user
    @vote.proposal = @proposal
    @vote.save
    redirect_back(fallback_location: activity_path(@proposal.activity))
  end

  def destroy
    @vote = Vote.find(params[:id])
    @vote.destroy
    redirect_to activity_path(@vote.proposal.activity), status: :see_other
  end

  private

  def find_proposal
    @proposal = Proposal.find(params[:proposal_id])
  end

end
