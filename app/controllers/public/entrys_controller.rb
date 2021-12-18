class Public::EntrysController < ApplicationController
  def new
    @entry = Entry.new
    @event = Event.find(params[:event_id])

  end

  def create
    @entry = current_user.entrys.new(entry_params)
    if @entry.save
      redirect_to comp_path
    else
      @event = @entry.event
      render :new
    end

  end


  def comp
  end

  def index
    @entrys = current_user.entrys
  end
  def index
    @entrys = current_user.entrys
  end

  def result
    @user = User.find(params[:user_id])
    @entrys = Entry.where("user_id=?", params[:user_id])
  end

  def show
    @entry = Entry.find(params[:id])
  end

  def rank
    @event = Event.find(params[:event_id])
    @users = @event.entrys_users.order("rank")
  end

  def search
    if params[:name] == ("run")
      redirect_to running_path
    else
    @event = Event.find(params[:event_id])
    @users = @event.entrys_users.where('name LIKE ?', "%#{params[:name]}%").order("rank")
    render :rank
    end
  end

  def  running
  end



  private
  def entry_params
    params.require(:entry).permit(:time, :user_id, :event_id, :rank ,:start_time)
  end

end
