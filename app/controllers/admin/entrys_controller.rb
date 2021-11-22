class Admin::EntrysController < ApplicationController
  def index
    @entrys = Entry.where("event_id=?", params[:event_id])

    # @entrys = Entry.order("time DESC")
  end
  
  def rank
     @entrys = Entry.where("event_id=?", params[:event_id]).order("time DESC")
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update
    @entry = Entry.find(params[:id])
    if @entry.update(entry_params)
      redirect_to admin_entrys_path
    else
      render :edit
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:user_id, :event_id, :time)
  end

end
