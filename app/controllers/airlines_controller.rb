class AirlinesController < ApplicationController
  def index
    @airlines = Airline.all
  end

  def new
@airline = Airline.new
  end

  def create
    @airline = Airline.new(airline_params)
    if @airline.save
      redirect_to airlines_url
    else
      render :new
    end
 
  end

  def show
    @airline = Airline.find(params[:id])

  end

  def edit
  end

  def update
  end

  def destroy
  end
  
  private
  def airline_params
    params.require(:airline).permit(:name)
  end
  


end
