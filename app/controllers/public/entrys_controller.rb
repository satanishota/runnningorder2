class Public::EntrysController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(entry_params)

    @entry.user_id = current_user.id
    if @entry.save
      redirect_to entry_path(@entry.id)
    else
      render :show
    end

  end

  def index
  end

  def show
    @entry = Entry.find(params[:id])
  end

  private
  def entry_params
    params.require(:entry).permit(:time, :user_id, :event_id)
  end

end
