class QuestionsController < ApplicationController
  before_action :set_categorys, only: [:new, :create, :edit, :update]
  before_action :set_user, 

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @question = Question.new
  end

  def create
    @question = Question.new(question_params)
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
    params.require(:@question).permit(:title, :body, :result)
  end

  def set_user
    @user = User.all
  end
  
end