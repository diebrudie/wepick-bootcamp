class VotesController < ApplicationController
  before_action :find_proposal, only: %i[create destroy]

  def create
    @vote = Vote.new(review_params)
    @vote.user = current_user
    @vote.proposal = @proposal
    @vote.save
  end

  def destroy
    @vote.destroy
    # redirect_to activities_path, status: :see_other
  end

  private

  def find_proposal
    @proposal = Proposal.find(params[:proposal_id])
  end

  def vote_params
    params.require(:vote).permit(:user_id, :proposal_id)
  end
end
