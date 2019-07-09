class AnswersController < ApplicationController
  before_action :set_question

  def create
    @answer = @question.answers.new(answer_params)
    @answer.user_id = current_user.id
    @answer.save
    redirect_back(fallback_location: root_path)
  end

  private

  def answer_params
    params.require(:answer).permit(:body).merge(question_id: @question)
  end

  def set_question
    @question = Question.find(params[:question_id])
  end

end
