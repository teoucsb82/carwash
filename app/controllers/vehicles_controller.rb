class VehiclesController < ApplicationController
  before_filter :authenticate_user!
  before_filter :load_user
  before_action :set_vehicle, only: [:edit, :update, :destroy]  
  layout 'members'

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user_id = @user.id

    if @vehicle.save
      redirect_to vehicles_url
      # format.html { redirect_to @vehicle, notice: 'Vehicle was successfully created.' }
      # format.json { render :show, status: :created, location: @vehicle }
    else
      format.html { render :new }
      format.json { render json: @vehicle.errors, status: :unprocessable_entity }
    end
  end

  def edit
  end

  def index
    @vehicles = @user.vehicles
  end

  def new
    @vehicle = Vehicle.new
  end

  def update
    respond_to do |format|
      if @vehicle.update(vehicle_params)
        format.html { redirect_to @vehicle, notice: 'Vehicle was successfully updated.' }
        format.json { render :show, status: :ok, location: @vehicle }
      else
        format.html { render :edit }
        format.json { render json: @vehicle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vehicles/1
  # DELETE /vehicles/1.json
  def destroy
    @vehicle.destroy
    respond_to do |format|
      format.html { redirect_to vehicles_url, notice: 'Vehicle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :year, :color, :licenseplate)
  end
end
