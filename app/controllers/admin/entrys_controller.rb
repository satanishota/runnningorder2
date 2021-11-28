class Admin::EntrysController < ApplicationController
  def index

    @entrys = Entry.where("event_id=?", params[:event_id])
    @enter = @entrys.count
    @entry = Entry.find(params[:event_id])

  end

  def rank
     @entrys = Entry.where("event_id=?", params[:event_id]).order("time").page(params[:page])
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

      redirect_to admin_entrys_path(:event_id => @entry.event_id)
    else
      render :edit
    end
  end

  private
  def entry_params
    params.require(:entry).permit(:user_id, :event_id, :time)
  end

end
