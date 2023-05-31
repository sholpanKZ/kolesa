class CarsController < ApplicationController

  http_basic_authenticate_with name: "Sholpan", password: "asa8789", except: [:index, :show]
  def index
    if current_user
      @cars = Car.all
    else
      redirect_to "/home/show"
    end
  end

  def show
    @car = Car.find(params[:id])
  end

   def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)



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

    if @car.update(car_params)
      redirect_to @car
    else
      render :edit, status: :unprocessable_entity
    end
  end

   def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to root_path, status: :see_other
  end

   private
    def car_params
      params.require(:car).permit(:name, :price, :description, :color, :status, images: [])
    end
end
