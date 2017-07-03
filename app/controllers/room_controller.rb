class RoomController < ApplicationController
  def new
  end
  def index
    @room = Room.all
  end
end
