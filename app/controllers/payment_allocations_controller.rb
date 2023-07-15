class PaymentAllocationsController < ApplicationController
  def index
    @payment = Payment.find(params[:payment_id])
    @payment_allocations = @payment.payment_allocations
  end

  def new
    @payment = Payment.find(params[:payment_id])
    @payment_allocation = PaymentAllocation.new
  end
  
  def edit
    @payment_allocation = PaymentAllocation.find(params[:id])
  end

  def create
    @payment = Payment.find(params[:payment_id])
    @payment_allocation = PaymentAllocation.new(payment_allocation_params)

    @payment_allocation.payment = @payment

    if @payment_allocation.save
      redirect_to payment_allocations_path(@payment.id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @payment = Payment.find(params[:id])
    @payment_allocation = PaymentAllocation.find(params[:id])
    @payment_allocation.payment = @payment
    if @payment_allocation.update(payment_allocation_params)
      redirect_to payment_allocations_path(@payment.id)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def payment_allocation_params
    params.require(:payment_allocation).permit(
      :service_gid, :amount
    )
  end
end
