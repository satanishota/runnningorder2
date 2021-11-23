class Public::EntrysController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @entry = current_user.entrys.new(entry_params)
    
    if @entry.save
      redirect_to entry_path(@entry.id)
    else
      render :show
    end

  end

  def index
    @entrys = current_user.entrys
  end

  def show
    @entry = Entry.find(params[:id])
  end
  
  def rank
   @entrys = @entrys = Entry.where("event_id=?", params[:event_id])
  end

  private
  def entry_params
    params.require(:entry).permit(:time, :user_id, :event_id)
  end

end
