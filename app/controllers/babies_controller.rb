class BabiesController < ApplicationController
  before_action :move_to_index, except: [:index]

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

  def show
    @baby = Baby.find(params[:id])
  end

  private

  def baby_params
    params.require(:baby).permit(:name, :gender, :birth_year, :birth_month, :birth_day, :image)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end
end
