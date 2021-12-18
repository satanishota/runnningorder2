class Admin::OrganizersController < ApplicationController
  def index
    @organizers = Organizer.all
  end

  def edit
    @organizer = Organizer.find(params[:id])

  end

  def update
    @organizer = Organizer.find(params[:id])
    if @organizer.update(organizer_params)
      redirect_to admin_organizers_path
    else
      render :edit
    end

  end

  def organizer_params
    params.require(:organizer).permit(:name, :email)
  end

end

