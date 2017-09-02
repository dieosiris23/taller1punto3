class GaragesController < ApplicationController
  before_action :set_garage, only: [:show, :update, :destroy]

  # GET /garages
  def index
    @garages = Garage.all

    render json: @garages
  end

  # GET /garages/1
  def show
    render json: @garage
  end

  # POST /garages
  def create
    @garage = Garage.new(garage_params)

    if @garage.save
      render json: @garage, status: :created, location: @garage
    else
      render json: @garage.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /garages/1
  def update
    if @garage.update(garage_params)
      render json: @garage
    else
      render json: @garage.errors, status: :unprocessable_entity
    end
  end

  # DELETE /garages/1
  def destroy
    @garage.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_garage
      @garage = Garage.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def garage_params
      params.require(:garage).permit(:adress, :capacity, :manager, :businventory)
    end
end
