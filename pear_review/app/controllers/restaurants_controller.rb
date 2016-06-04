class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new
    @restaurant.cover_image = params[:cover_image]
    @restaurant.short_description = params[:short_description]
    @restaurant.lng = params[:lng]
    @restaurant.lat = params[:lat]
    @restaurant.price = params[:price]
    @restaurant.neighborhood = params[:neighborhood]
    @restaurant.zip = params[:zip]
    @restaurant.state = params[:state]
    @restaurant.city = params[:city]
    @restaurant.street = params[:street]
    @restaurant.name = params[:name]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])

    @restaurant.cover_image = params[:cover_image]
    @restaurant.short_description = params[:short_description]
    @restaurant.lng = params[:lng]
    @restaurant.lat = params[:lat]
    @restaurant.price = params[:price]
    @restaurant.neighborhood = params[:neighborhood]
    @restaurant.zip = params[:zip]
    @restaurant.state = params[:state]
    @restaurant.city = params[:city]
    @restaurant.street = params[:street]
    @restaurant.name = params[:name]

    if @restaurant.save
      redirect_to "/restaurants", :notice => "Restaurant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:id])

    @restaurant.destroy

    redirect_to "/restaurants", :notice => "Restaurant deleted."
  end
end
