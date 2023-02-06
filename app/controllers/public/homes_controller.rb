class Public::HomesController < ApplicationController
  before_action :authenticate_customer!, only: [:top]
  def top
    event_id = Guest.where(customer_id: current_customer.id, status: ["participation", "waiting"]).pluck(:event_id)
    @events = Event.where(id: event_id)
  end

  def about
    @event = Event.new
  end
end
