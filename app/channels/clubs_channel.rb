class ClubsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "clubs_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
