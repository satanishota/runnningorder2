class Organizer::MapsController < ApplicationController
  def edit
    @map = Map.find(params[:id])
    @event = @map.event
  end

  def update
    @map = Map.find(params[:id])
     @map.update(map_params)
      redirect_to organizer_events_path
  end

  private

  def map_params
    params.require(:map).permit(:start, :start_k, :way, :way_k, :goal, :goal_k, :event_id)
  end
end
