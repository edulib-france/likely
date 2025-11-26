class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    
    if @vote.save
      render json: @vote, status: :created
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def result
    question_id = params[:id]
    
    top_selected_ids = Vote
      .where(question_id: question_id)
      .group(:selected_id)
      .order('COUNT(selected_id) DESC')
      .limit(3)
      .pluck(:selected_id)

    render json: User.where(id: top_selected_ids).select(:name)
  end

  private

  def vote_params
    params.require(:vote).permit(:question_id, :voter_id, :selected_id)
  end
end
