class Public::HomesController < ApplicationController
  def top
    @events = Event.all
  end

  def about
  end
end
