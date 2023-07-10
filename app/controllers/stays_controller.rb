class StaysController < ApplicationController
  def index
  end

  def new
    @stay = Stay.new
  end

  def edit
    @stay = Stay.find(params[:id])
  end

  def create
    @stay = Stay.new(stay_params)
    if @stay.save
      redirect_to stays_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @stay = Stay.find(params[:id])
    if @stay.update(stay_params)
      redirect_to stays_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def stay_params
    params.require(:stay).permit(
      :person_id, :room_id,
      :start, :end,
      :price
    )
  end
end
