class Admin::EventsController < ApplicationController
  def index
    @events = Event.page(params[:page]).order(start_time: "ASC")
  end

  def show
    @event = Event.find(params[:id])
    @guests = @event.guests.all
  end

  def edit
    @event = Event.find(params[:id])
    @guests = @event.guests.all
    @places = Place.all.order(address: "ASC")
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to admin_event_path
  end

  def confirm
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to admin_events_path
  end

  private

  def event_params
     params.require(:event).permit(:date, :title, :customer_id, :start_time, :end_time, :meet_place, :comment_id,guests_attributes:[ :event_id, :customer_id, :status, :_destroy])
    .merge(place_id: Place.find_by(name: params[:event][:place_id]).id)
  end

end
