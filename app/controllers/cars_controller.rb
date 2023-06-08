class CarsController < ApplicationController

  before_action :authenticate_user!, except: [:index,:show]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

   def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.owner = current_user
    if @car.save
      redirect_to @car
    else
      render :new, status: :unprocessable_entity
    end
  end
 def edit
   @car = Car.find(params[:id])
 end

  def update
    @car = Car.find(params[:id])
    authorize @car
    if @car.update(car_params)
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end
  end

   def destroy
    @car = Car.find(params[:id])
    authorize @car
    @car.destroy

    redirect_to root_path, status: :see_other
  end

   private
    def car_params
      params.require(:car).permit(:name, :price, :description, :color, :status, images: [])
    end
end
