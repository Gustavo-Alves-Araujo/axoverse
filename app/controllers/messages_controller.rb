class MessagesController < ApplicationController
  def create
    @message = current_user.messages.create(body: msg_params[:body], room_id: params[:room_id])

    redirect_to room_path(params[:room_id])
  end

  private

  def msg_params
    params.require(:message).permit(:body)
  end
end
