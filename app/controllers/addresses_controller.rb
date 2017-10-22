class AddressesController < ApplicationController

  def index
    @addresses = Address.all
  end

  def new
    @address = Address.new
  end

  def create
    @address = Address.new
    @address.save
  end

  def edit
    @address = Address.find(params[:id])
  end

  def update
  end

  def delete
    @address = Address.find(params[:id])
  end

  def destroy
  end

  private
    def address_params
      params.require(:address).permit(:address, :city, :state, :zipcode)
    end
end
