class RankingController < ApplicationController

  def index
    @question_ranking = Question.find(Answer.group(:question_id).order('count(question_id)desc').limit(50).pluck(:question_id))
    @num = 1
    @numday = 1
    @numweek = 1
    @nummonth = 1
    @categorys = Category.all

    now = Time.current
    
    @question_ranking_today = Question.find(Answer.where(created_at: now.in_time_zone.all_day).group(:question_id).order('count(question_id)desc').limit(50).pluck(:question_id))
    @question_ranking_week = Question.find(Answer.where(created_at: now.in_time_zone.all_week).group(:question_id).order('count(question_id)desc').limit(50).pluck(:question_id))
    @question_ranking_month = Question.find(Answer.where(created_at: now.in_time_zone.all_month).group(:question_id).order('count(question_id)desc').limit(50).pluck(:question_id))
  end

end
