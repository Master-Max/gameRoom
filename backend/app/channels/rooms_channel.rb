class RoomsChannel < ApplicationCable::Channel
  def subscribed
    room = Room.find_by_room_code(params[:code])
    stream_for room
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
