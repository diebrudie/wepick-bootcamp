class ProposalsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @proposal = Proposal.new
    @activity = Activity.first
  end

  def create
    @proposal = Proposal.new(proposal_params)
  end

  private

  def proposal_params
    params.require(:proposal).permit(:title, :description)
  end


end
