class CategorysController < ApplicationController

  def show
    cate = Category.find(params[:id])
    @category = cate.questions.all.order("id DESC")
    @categorys = Category.all
  end

end
