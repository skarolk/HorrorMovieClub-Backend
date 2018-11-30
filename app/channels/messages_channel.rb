class MessagesChannel < ApplicationCable::Channel
  def subscribed
    @club = Club.find(params[:club])
    stream_for @club
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
