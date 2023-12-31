class RecordsController < ApplicationController
  before_action :move_to_index
  before_action :find_baby, only: [:index, :new, :create]

  def new
    @record = Record.new
  end

  def index
    @records = Record.where(baby_id: params[:baby_id])
  end

  def create
    @record = Record.new(record_params)

    if @record.save
      redirect_to baby_path(@baby), notice: '記録が追加されました'
    else
      render :new
    end
  end

  private

  def find_baby
    @baby = Baby.find(params[:baby_id])
  end

  def record_params
    params.require(:record).permit(:milk, :oshikko, :unchi, :body_temperature, :memo).merge(baby_id: @baby.id, user_id: current_user.id)
  end

  def move_to_index
    unless user_signed_in?
      redirect_to babies_path
    end
  end
end
