class DishingsController < ApplicationController
  def index
    @dishings = Dishing.all
  end

  def show
    @dishing = Dishing.find(params[:id])
  end

  def new
    @dishing = Dishing.new
  end

  def create
    @dishing = Dishing.new
    @dishing.restaurant_id = params[:restaurant_id]
    @dishing.dish_id = params[:dish_id]

    if @dishing.save
      redirect_to "/dishings", :notice => "Dishing created successfully."
    else
      render 'new'
    end
  end

  def edit
    @dishing = Dishing.find(params[:id])
  end

  def update
    @dishing = Dishing.find(params[:id])

    @dishing.restaurant_id = params[:restaurant_id]
    @dishing.dish_id = params[:dish_id]

    if @dishing.save
      redirect_to "/dishings", :notice => "Dishing updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @dishing = Dishing.find(params[:id])

    @dishing.destroy

    redirect_to "/dishings", :notice => "Dishing deleted."
  end
end
