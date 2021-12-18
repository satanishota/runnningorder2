class Organizer::EventsController < ApplicationController
  before_action :correct_organizer, only: [:edit,:update,:destroy]

  def new
    @event = Event.new
  end

  def index
    @events = Event.all
  end

  def create
    @event = Event.new(event_params)

    if @event.save

      @map = Map.new(map_params)
      @map.event_id = @event.id
      @map.save
      redirect_to organizer_event_path(@event.id)
    else
      render :new
    end
  end

  def show
    @event = Event.find(params[:id])

  end

  def edit
    @event = Event.find(params[:id])
    @map = @event.map
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to organizer_events_path
    else
      render :edit
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :introduction, :place, :capacity, :day, :distance, :organizer_id)
  end
  def map_params
    params.require(:event).permit(:start, :start_k, :way, :way_k, :goal, :goal_k, :event_id,)
  end
  def correct_organizer
    @event = Event.find(params[:id])
   unless @event.organizer_id == current_organizer.id
     flash[:notice] = "別の主催者のため編集できません"
      redirect_to organizer_event_path(@event)

   end
  end
end
