class PurchasesController < ApplicationController


  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    @purchase.save
    redirect_to customer_path(@purchase.customer)
  end

  private

  def purchase_params
    params.require(:purchase).permit(:customer_name, :brew_id)
  end

end
