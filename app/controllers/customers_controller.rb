class CustomersController < ApplicationController

  before_action :set_customer, only: [:edit, :show, :update]

  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new
    if @customer.save
      redirect_to customer_path(@customer)
    else
      render :new
    end
  end

  def show
  end

  private

  def customer_params
    params.require(:customer).permit(:name)
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end
end
