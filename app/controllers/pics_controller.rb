class PicsController < ApplicationController
  def index
    @pics = Pic.all
  end

  def show
    @pic = Pic.find(params[:id])
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new
    @pic.user_id = params[:user_id]
    @pic.image = params[:image]
    @pic.dishing_id = params[:dishing_id]

    if @pic.save
      redirect_to "/pics", :notice => "Pic created successfully."
    else
      render 'new'
    end
  end

  def edit
    @pic = Pic.find(params[:id])
  end

  def update
    @pic = Pic.find(params[:id])

    @pic.user_id = params[:user_id]
    @pic.image = params[:image]
    @pic.dishing_id = params[:dishing_id]

    if @pic.save
      redirect_to "/pics", :notice => "Pic updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @pic = Pic.find(params[:id])

    @pic.destroy

    redirect_to "/pics", :notice => "Pic deleted."
  end
end
