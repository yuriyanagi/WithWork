class RecordsController < ApplicationController

  def index
    @records = Record.all
    @record = Record.new
    # previous = Record.last
    # @previous_end_time = previous.end_time

  end

  def create
    Record.create(record_params)
    redirect_to records_path
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
    params.require(:record).permit(:start_time, :end_time, :class1, :class2, :class3, :user_id).merge(user_id: current_user.id)
  end
end