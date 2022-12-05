# frozen_string_literal: true

class MessagesController < ApplicationController
  before_action :set_room, only: %i[create]

  def create
    @message = current_user.messages.create(body: msg_params[:body], room_id: params[:room_id])

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to @room }
    end
  end

  private

  def set_room
    @room = Room.find(params[:room_id])
  end

  def msg_params
    params.require(:message).permit(:body)
  end
end
