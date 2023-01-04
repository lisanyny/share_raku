class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
    @events = current_customer.events.page(params[:page]).order(start_time: "ASC")
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to my_page_path
  end

  def confirm
    @customer = current_customer
  end

  def thanks
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    redirect_to root_path
  end

  private

  def customer_params
   params.require(:customer).permit(:first_name, :last_name, :email, :is_deleted)
  end

end