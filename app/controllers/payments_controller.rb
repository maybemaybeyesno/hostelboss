class PaymentsController < ApplicationController
  def index
  end

  def new
    @payment = Payment.new
  end
  
  def edit
    @payment = Payment.find(params[:id])
  end

  def create
    @payment = Payment.new(payment_params)

    if @payment.save
      redirect_to payments_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @payment = Payment.find(params[:id])
    if @payment.update(payment_params)
      redirect_to payments_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def payment_params
    params.require(:payment).permit(:sender_gid, :receiver_gid, :sent_at, :amount )
  end
end
