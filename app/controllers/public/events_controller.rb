class Public::EventsController < ApplicationController
  def index
    @customer_name = current_customer.first_name
    event_id = Guest.where(customer_id: current_customer.id, status: ["participation", "waiting"]).pluck(:event_id)
    @events = Event.page(params[:page]).where(id: event_id).order(start_time: "ASC")
  end

  def show
    @event = Event.find(params[:id])
    @comment = Comment.new
    @comments = @event.comments.all
  end

  def new
    @event = Event.new
    @guest = @event.guests.build
    @customers = Customer.where(is_deleted: false)
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to homes_top_path
    else
      render action: :new
    end
  end

  def edit
    @event = Event.find(params[:id])
    @guests = @event.guests.all
    @customers = Customer.where(is_deleted: false)
  end

  def update
    @event = Event.find(params[:id])
    @event.update!(event_update_params)
    redirect_to event_path(@event.id)
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
    params.require(:event).permit(:date, :title, :customer_id, :start_time, :end_time, :meet_place, :comment_id,guests_attributes:[ :event_id, :customer_id, :status, :_destroy])
    .merge(customer_id: current_customer.id, place_id: Place.find_by(name: params[:event][:place_id]).id)
  end

  def event_update_params
    params.require(:event).permit(:date, :title, :customer_id, :start_time, :end_time, :meet_place, :comment_id,guests_attributes:[ :event_id, :customer_id, :status, :_destroy])
    .merge(customer_id: current_customer.id, place_id: params[:event][:place_id])
  end


end