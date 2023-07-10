class PeopleController < ApplicationController
  def index
  end

  def new
    @person = Person.new
  end

  def edit
    @person = Person.find(params[:id])
  end

  def create
    @person = Person.new(person_params)

    if @person.save
      redirect_to people_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @person = Person.find(params[:id])

    if @person.update(person_params)
      redirect_to people_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def person_params
    params.require(:person).permit(:legal_name, :friendly_name, :description)
  end
end
