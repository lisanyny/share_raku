class Public::GuestsController < ApplicationController

  def index
  end

  def edit
    @guest = Guest.find(params[:id])
    @event = Event.find(params[:event_id])
  end

  def update
    @event = Event.find(params[:event_id])
    @guest = Guest.find(params[:id])
    @guest.update(guest_params)
    redirect_to event_guests_path(@event.id)
  end

  private

  def guest_params
    params.require(:guest).permit(:event_id, :customer_id, :status, :_destroy)
  end

end