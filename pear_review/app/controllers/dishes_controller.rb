class DishesController < ApplicationController
  def index
    @dishes = Dish.all
  end

  def show
    @dish = Dish.find(params[:id])
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new
    @dish.dish_name = params[:dish_name]

    if @dish.save
      redirect_to "/dishes", :notice => "Dish created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dish = Dish.find(params[:id])
  end

  def update
    @dish = Dish.find(params[:id])

    @dish.dish_name = params[:dish_name]

    if @dish.save
      redirect_to "/dishes", :notice => "Dish updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dish = Dish.find(params[:id])

    @dish.destroy

    redirect_to "/dishes", :notice => "Dish deleted."
  end
end
