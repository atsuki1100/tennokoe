class RankingController < ApplicationController

  def index
    @question_ranking = Question.find(Answer.group(:question_id).order('count(question_id)desc').limit(50).pluck(:question_id))
    @num = 1
    @categorys = Category.all
  end

end
