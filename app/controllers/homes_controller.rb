class HomesController < ApplicationController
  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)

    if @home.save
      redirect_to @home
    else
      render :new
    end
  end

  def show
    @home = Home.find(params[:id])
  end

  def destroy
    home = Home.find(params[:id])
    home.destroy
    redirect_to homes_url
  end

  private

  def home_params
    params.require(:home).permit(:id, :name)
  end
end
