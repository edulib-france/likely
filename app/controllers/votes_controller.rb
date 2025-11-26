class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    
    if @vote.save
      render json: @vote, status: :created
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def vote_params
    params.require(:vote).permit(:question_id, :voter_id, :selected_id)
  end
end
