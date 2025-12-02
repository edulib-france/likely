class VotesController < ApplicationController
  def create
    @vote = Vote.new(vote_params)
    
    if @vote.save
      render json: @vote, status: :created
    else
      render json: { errors: @vote.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    question_id = params[:question_id]

    if question_id.present?
      total_votes = Vote.where(question_id: question_id).count
      render json: { question_id: question_id.to_i, total_votes: total_votes }
    else
      votes = Vote.all
      render json: votes
    end
  end

  def show
    question_id = params[:question_id]
    voter_id = params[:voter_id]
    
    vote = Vote.find_by(question_id: question_id, voter_id: voter_id)
    
    if vote
      selected_user = User.find(vote.selected_id)
      render json: { 
        has_voted: true, 
        selected_user: { id: selected_user.id, name: selected_user.name }
      }
    else
      render json: { has_voted: false }
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
