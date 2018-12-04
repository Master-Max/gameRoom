class Api::V1::RoomsController < ApplicationController

  def create
    room = Room.new()
    room.code = Room.generate_room_code
    room.save()
    render json: room, status: 201
  end

  def update
    # broadcast update to all users in a room
    ActionCable.broadcast()
  end

end
