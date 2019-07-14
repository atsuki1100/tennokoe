class HitokotoController < ApplicationController
  before_action :set_user

  def new
    @hitokoto = Hitokoto.new
  end

  def create
    @hitokoto = Hitokoto.new(hitokoto_params)
    if @hitokoto.save
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @hitokoto = Hitokoto.find(params[:id])
  end

  def update
    hitokoto = Hitokoto.find(params[:id])
    hitokoto.update(hitokoto_params) if hitokoto.user.id = current_user.id
    redirect_to user_path(@user)
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def hitokoto_params
    params.require(:@hitokoto).permit(:comment).merge(user_id: current_user.id)
  end

end
