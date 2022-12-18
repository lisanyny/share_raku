class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
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
  end

  def thanks
  end

  private

  def customer_params
   params.require(:customer).permit(:first_name, :last_name, :email, :is_deleted)
  end

end