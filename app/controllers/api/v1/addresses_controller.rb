class Api::V1::AddressesController < ApplicationController
  before_action :address
  def index
    @addresses = Address.all
  end
  def show
    render :address
  end


  def update
    binding.pry
    if @address.update(address_params)
      binding.pry
      render :address
    else
      render json: {errors: address.errors.full_meesages.join(',')}
    end
  end

  def destroy
    @address.destroy
  end

  private

  def address
    @address = Address.find(params[:id])
  end

  def address_params
    params.require(:address).permit(:street, :city, :state, :zip)
  end
end
