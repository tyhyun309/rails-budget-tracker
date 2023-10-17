class WalletsController < ApplicationController
  skip_before_action :authenticate_user!, :verify_authenticity_token, only: :index
  def index
    @wallets = Wallet.all
  end

  def show
    @wallet = Wallet.find(params[:id])
  end

  def new
    @wallet = Wallet.new
  end

  def create
    @wallet = Wallet.new(wallet_params)

    if @wallet.save
      redirect_to wallets_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def wallet_params
    params.require(:wallet).permit(:budget, :id)
  end
end
