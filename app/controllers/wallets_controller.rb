class WalletsController < ApplicationController
  def new
    @wallet = Wallet.new
  end

  def create
    @wallet = Wallet.new(wallet_params)
    @wallet.save
  end

  private

  def wallet_params
    params.require(:wallet).permit(:budget)
  end
end
