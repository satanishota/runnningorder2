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

  def search2_event

    @events = Event.all.order(:day)
    
    @events.each do |event|
    if event.day <= Date.today
      @events = Event.where("day > ?", Date.today)
    end
  end
    render :index
  end
end
