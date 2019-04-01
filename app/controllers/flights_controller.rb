class FlightsController < ApplicationController

  def index
    @flights = Flight.all  
  end


  def create
    @flight = Flight.new(flight_params)
    if @flight.save
      puts "........................#{@flight.inspect}"
      redirect_to '/airlines'
    else
      render :new
    end
  end

  def new
    @flight = Flight.new
  end
 
  def show
    @flight = Flight.find(params[:id])
  end
  
  def update
    #  binding.pry
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      redirect_to @flight
    else
      render :edit
    end
    
  end

  def edit 
    @flight = Flight.find(params[:id])
  end

  def show_passengers
    # @crews = Flight.find(params[:id]).crews
    flight = Flight.find(params[:id])
    @passengers = flight.passengers

  end
  def show_crew_members
   @crews = Flight.find(params[:id]).crews
  end

  private 
  def flight_params
    params.require(:flight).permit(:name, :date, :destination,:airline_id, :passenger_ids)
  end
end

