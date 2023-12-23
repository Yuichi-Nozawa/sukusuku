class ActionsController < ApplicationController
  before_action :find_baby, only: [:new, :create]

  def new
    @action = Action.new
  end

  def index
    @actions = Action.where(baby_id: params[:baby_id])
  end

  def create
    @action = @baby.actions.create(action_params)

    if @action.save
      redirect_to baby_path(@baby), notice: '記録が追加されました'
    else
      render :new
    end
  end

  private

  def find_baby
    @baby = Baby.find(params[:baby_id])
  end

  def action_params
    params.require(:action).permit(:milk, :omutsu, :body_temperature, :memo)
  end
end
