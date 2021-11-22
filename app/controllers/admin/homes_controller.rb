class Admin::HomesController < ApplicationController
  def top
    @entrys = Entry.all
  end
end
