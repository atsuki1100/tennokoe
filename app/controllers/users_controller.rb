class UsersController < ApplicationController

  def index
    @user = User.find(params[:format])
    @questions = @user.questions.all.order("id DESC")
    @categorys = Category.all
  end

  def show
    @user = User.find(params[:id])
    @questions = Question.where(user_id: current_user.id).order("id DESC")
    @categorys = Category.all
  end
end
