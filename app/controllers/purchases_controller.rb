class PurchasesController < ApplicationController
  def create
    @purchase = Purchase.new(purchase_params)

    if @purchase.save
      redirect_to @purchase
    else
      redirect_to :back
    end
  end

  def show
  end

  private
    def purchase_params
      params.require(:purchase).permit(:store, :email, :name, :product_id)
    end
end