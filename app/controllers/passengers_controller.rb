class PassengersController < ApplicationController
  def create
    @passenger = Passenger.new(passenger_params)
    if @passenger.save
      redirect_to '/passengers'
    else
      render :new
    end
  end

  def new
    @passenger = Passenger.new
  end

  def index
    @passengers = Passenger.all
  end

  private
  def passenger_params
    params.require(:passenger).permit(:name, :status)
  end

end
