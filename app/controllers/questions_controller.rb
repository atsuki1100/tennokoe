class QuestionsController < ApplicationController
  before_action :set_user, 

  def index
    @questions = Question.all.order("id DESC")
    @user = User.all
    @categorys = Category.all
  end

  def show
    @question = Question.find(params[:id])
    @user = @question.user
    @answer = Answer.new
  end

  def new
    if user_signed_in?
      @question = Question.new
    else
      redirect_to '/users/sign_in'
    end
  end

  def create
    @question = Question.new(question_params)
    binding.pry
    if @question.save
      redirect_to '/'
    else
      redirect_to '/'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def question_params
    params.require(:@question).permit(:title, :body, :result, :category_id).merge(user_id: current_user.id)
  end

  def set_user
    @user = User.all
  end
  
end