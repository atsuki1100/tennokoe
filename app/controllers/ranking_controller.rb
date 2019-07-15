class RankingController < ApplicationController

  def index
    @categorys = Category.all
  end

end
