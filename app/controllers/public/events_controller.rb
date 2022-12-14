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
    @event = Event.new
    @event.save
    redirect_to homes_top_path
  end

  def edit
  end

  def update
  end

  def confirm
  end

  def destroy
  end

  private

  def event_params
    params.require(event).permit(:date, :title, :customer_id, :album_id, :commnet_id, :status_id, :time, :place, :meet_place)
  end

end
