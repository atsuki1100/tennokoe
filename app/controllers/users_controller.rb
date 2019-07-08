class UsersController < ApplicationController

  def index
    @user = User.find(params[:format])
    @questions = @user.questions.all
  end

  def show
    @nickname = current_user.nickname
    @questions = Question.where(user_id: current_user.id)
  end
end
