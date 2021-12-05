class Public::EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @entrys = @event.entrys.where(params[:event_id]).count
    @map = @event.map

  end

  def search_event

    @events = Event.where( "distance BETWEEN ? AND ?",(params[:from]),(params[:to]))

    render :index
  end
end
