class Public::EventsController < ApplicationController
  def index
    @events = Event.page(params[:page])
    @customer_name = current_customer.first_name
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.save!
    redirect_to homes_top_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    @event.update(event_params)
    redirect_to events_path
  end

  def confirm
    @event = Event.find(params[:id])
  end

  def destroy
    @event = Event.find(params[:id])
    @event.delete
    redirect_to my_path
  end

  private

  def event_params
    params.require(:event).permit(:date, :title, :customer_id, :start_time, :end_time, :place, :meet_place, :comment_id)
  end

end