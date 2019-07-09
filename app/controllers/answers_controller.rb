class AnswersController < ApplicationController

  def create
    @answer = Answer.new(comment_params)

end
