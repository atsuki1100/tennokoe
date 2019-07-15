class AnswersController < ApplicationController
  before_action :set_question, only: [:create]

  def index
    @user = User.find(params[:user_id])
    @answers = @user.answers.order("id DESC").page(params[:page]).per(20)
  end

  def create
    @answer = @question.answers.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      respond_to do |format|
        # format.html { redirect_back(fallback_location: root_path) }
        format.json
      end
    end
  end

  private

  def answer_params
    params.require(:answer).permit(:body).merge(question_id: @question)
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

end
