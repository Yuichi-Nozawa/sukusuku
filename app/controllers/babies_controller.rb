# app/controllers/babies_controller.rb

class BabiesController < ApplicationController
  def index
    @babies = Baby.all
  end

  def new
    @baby = Baby.new
  end

  def create
    @baby = Baby.new(baby_params)

    if @baby.save
      redirect_to babies_path, notice: '赤ちゃんが正常に追加されました。'
    else
      render :index
    end
  end

  private

  def baby_params
    params.require(:baby).permit(:name, :gender, :birth_year, :birth_month, :birth_day)
  end
end
