class Organizer::HomesController < ApplicationController
  def top
    @entrys = Entry.all
  end

end
