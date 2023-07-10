class SleepsController < ApplicationController
  def index
  end

  def new
    @sleep = Sleep.new
  end

  def edit
    @sleep = Sleep.find(params[:id])
  end

  def create
    @sleep = Sleep.new(sleep_params)
    if @sleep.save
      redirect_to sleeps_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @sleep = Sleep.find(params[:id])
    if @sleep.update(sleep_params)
      redirect_to sleeps_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def sleep_params
    params.require(:sleep).permit(
      :person_id, :room_id,
      :start, :end,
      :price
    )
  end
end
