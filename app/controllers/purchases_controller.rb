class PurchasesController < ApplicationController

  def show
    @purchase = Purchase.find(params[:id])
  end

  def new
    @purchase = Purchase.new
  end

  def create
    @purchase = Purchase.new(purchase_params)
    if @purchase.save
      redirect_to @purchase
    else
      flash[:errors] = @purchase.errors.full_messages.join(', ')
      render 'new'
    end
  end

  private

  def purchase_params
    params.require(:purchase).permit(:customer_name,:num_of_sugars,:creamer_strength,:brew_id,:special_instructions,:iced, :size)
  end

end
