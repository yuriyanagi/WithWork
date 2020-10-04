class RecordsController < ApplicationController

  def index
    @records = Record.all
    @record = Record.new
  end

  def create
    Record.create(record_params)
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    record = Record.find(params[:id])
    record.update(record_params)
    redirect_to action: :index
  end

  private

  def record_params
    params.require(:record).permit(:date, :start_time, :end_time, :class1, :class2, :class3)
  end
end