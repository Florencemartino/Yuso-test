class DriversController < ApplicationController

  before_action :set_driver , only: [:show, :update, :destroy]

  def index
    @drivers =  Driver.all
    render json: @drivers, only: [:id, :first_name, :last_name, :phone_number]
  end

  def show
    render json: @driver, only: [:id, :first_name, :last_name, :phone_number]
  end

  def create
    driver = Driver.new(driver_params)
    if driver.valid?
      driver.save
      render :nothing, status: :created
    else
      render :nothing, status: :bad_request
    end
  end

  def update
    @driver.update(driver_params)
    render json: @driver, only: [:id, :first_name, :last_name, :phone_number]
  end

  def destroy
    @driver.destroy
  end

  private

  def driver_params
    params.require(:driver).permit(:first_name, :last_name, :phone_number)
  end

  def set_driver
    @driver = Driver.find(params[:id])
  end
end
