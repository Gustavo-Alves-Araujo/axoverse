class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: %i[show]
  before_action :set_characters, only: %i[show]

  def index
    @room = Room.new

    @rooms = avaiable_rooms

    @users_to_chat_with = User.all_except(current_user)
  end

  def show
    @rooms = avaiable_rooms

    @message = Message.new

    @messages = @room.messages.order(created_at: :asc)
  end

  def create
    sender = current_user.email
    receiver = params[:user]
    # room_name = "ROOM: #{sender}-#{receiver}" # not required

    @room = Room.create(sender_email: sender, receiver_email: receiver)

    redirect_to room_path(@room)
  end

  private

  def avaiable_rooms = room_where_user_is_sender.or(room_where_user_is_receiver)

  def room_where_user_is_sender = Room.where(sender_email: current_user_email)

  def room_where_user_is_receiver = Room.where(receiver_email: current_user_email)

  def current_user_email = current_user.email

  def set_room
   @room = Room.find(params[:id])
  end

  def set_characters
    if @room.sender_email != current_user.email
      @user = @room.receiver_email
      @contact = @room.sender_email
    else
      @user = @room.sender_email
      @contact = @room.receiver_email
    end
  end
end
