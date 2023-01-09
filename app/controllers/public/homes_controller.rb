class Public::HomesController < ApplicationController
  def top
    @events = Event.all
  end

  def about
    @event = Event.new
  end
end
