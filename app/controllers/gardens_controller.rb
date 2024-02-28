class GardensController < ApplicationController
  before_action :set_garden, only: %i[show destroy]

  def index
    @gardens = Garden.all
  end

  def show
    @plants = @garden.plants
  end

  def new
  end

  def create
  end

  private

  def set_garden
    @garden = Garden.find(params[:id])
  end
end
