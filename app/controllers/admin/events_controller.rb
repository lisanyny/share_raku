class Admin::EventsController < ApplicationController
  def index
    @events = Event.page(params[:page]).order(start_time: "ASC")
  end

  def show
    @event = Event.find(params[:id])
  end

  def edit
    @event = Event.find(params[:id])
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
    @event.delete
    redirect_to admin_events_path
  end

  private

  def event_params
    params.require(:event).permit(:date, :title, :customer_id, :album_id, :commnet_id, :status_id, :time, :place_id, :meet_place)
  end

end
