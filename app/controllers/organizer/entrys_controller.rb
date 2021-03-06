class Organizer::EntrysController < ApplicationController
  def index

    @entrys = Entry.where("event_id=?", params[:event_id]).order("time")
    @enter = @entrys.count
    @event = Event.find(params[:event_id])

  end

  def rank
     @entrys = Entry.where("event_id=?", params[:event_id]).order("rank").page(params[:page])
     @event = Event.find(params[:event_id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)

      redirect_to organizer_entrys_path(:event_id => @entry.event_id)
    else
      render :edit
    end
  end
  
  def update_all
    
    Entry.where("event_id=?", params[:event_id]).update_all(rank: 999)
  
  end

  def destroy
    @entry = Entry.find(params[:id])
    @entry.destroy
    redirect_to organizer_entrys_path(:event_id => @entry.event_id)
  end


  private
  def entry_params
    params.require(:entry).permit(:user_id, :event_id, :time, :rank, :start_time)
  end

end

