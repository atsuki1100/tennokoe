class QuestionsController < ApplicationController
  before_action :set_categorys, only: [:new, :create, :edit, :update]
  before_action :set_user, 

  def index
    @questions = Question.all
    @user = User.all
  end

  def show
    @question = Question.find(params[:id])
    @user = @question.user
  end

  def new
    if user_signed_in?
      @question = Question.new
    else
      redirect_to '/users/sign_in'
    end
  end

  def create
    @question = @user.questions.new(question_params)
    @question.save
    redirect_to '/'
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_categorys
    @categorys = Category.all
  end

  def question_params
    params.require(:@question).permit(:title, :body, :result).merge(user_id: current_user.id)
  end

  def set_user
    @user = User.all
  end
  
end