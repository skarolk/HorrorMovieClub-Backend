class Api::V1::MessagesController < ApplicationController
  def create
    @message = Message.create(message_params)
    club = Club.find(message_params[:club_id])
    if @message.save
      serialized_data = ActiveModelSerializers::Adapter::Json.new(
        MessageSerializer.new(message)
      ).serializable_hash
      MessagesChannel.broadcast_to club, serialized_data
      head :ok
    end
  end

  private

  def message_params
    params.require(:message).permit(:text, :club_id, :user_id)
  end
end
