class Public::EventsController < ApplicationController
  def index
    @customer_name = current_customer.first_name
    @events = Event.page(params[:page])
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.new
  end

  def new
    @event = Event.new
    @guest = @event.guests.build
  end

  def create
    @event = Event.new(event_params)
    if @event.save!
      redirect_to homes_top_path
    else
      render action: :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    @guests = @event.guests.all
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
    redirect_to my_page_path
  end

  def guests
    @event = Event.find(params[:id])
    @guests = @event.guests.where.not(status: 2)
  end

  private

  def event_params
    params.require(:event).permit(:date, :title, :customer_id, :start_time, :end_time, :place_id, :meet_place, :comment_id,guests_attributes:[ :event_id, :customer_id, :status, :_destroy]).merge(customer_id: current_customer.id)
  end

end