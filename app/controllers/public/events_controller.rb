class Public::EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    # @entry = Event.joins()
    @entrys = @event.entrys.where(params[:event_id]).count
    # binding.pry

  end
end
