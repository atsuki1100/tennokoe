class LikesController < ApplicationController

  before_action :set_answer, onry: [:create, :destroy]

  def create
    @like = Like.new(user_id: current_user.id, answer_id: params[:answer_id])
    @like.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, answer_id: params[:answer_id])
    @like.destroy
    redirect_back(fallback_location: root_path)
  end

  private

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

end
