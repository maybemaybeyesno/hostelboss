class RoomsController < ApplicationController
  def index
  end

  def new
    @room = Room.new
  end

  def edit
    @room = Room.find(params[:id])
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to rooms_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def room_params
    params.require(:room).permit(:name, :description, :beds)
  end
end
