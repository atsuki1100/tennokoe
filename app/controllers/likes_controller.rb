class LikesController < ApplicationController

  before_action :set_answer, only: [:show, :create, :destroy]

  def show
  end

  def create
    @like = Like.new(user_id: current_user.id, answer_id: params[:answer_id])
    @like.save
    @likes = Like.where(answer_id: params[:answer_id])
    
    respond_to do |format|
      format.html {redirect_back(fallback_location: root_path)}
      format.json
    end
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, answer_id: params[:answer_id])
    @like.destroy
    @likes = Like.where(answer_id: params[:answer_id])
    redirect_back(fallback_location: root_path)
  end

  private

  def set_answer
    @answer = Answer.find(params[:answer_id])
  end

end
