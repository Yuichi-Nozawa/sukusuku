class RecordsController < ApplicationController
  before_action :find_baby, only: [:index, :new, :create]

  def new
    @record = Record.new
  end

  def index
    @records = @baby.records.order(created_at: :asc)
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
    params.require(:record).permit(:milk, :body_temperature, :memo, omutsu: []).merge(baby_id: @baby.id)
  end
end
