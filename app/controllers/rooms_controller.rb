class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @room = Room.new

    @rooms = avaiable_rooms

    @users_to_chat_with = User.all_except(current_user)
  end

  def show
    @single_room = Room.find(params[:id])

    @room = Room.new

    @rooms = avaiable_rooms

    @message = Message.new

    @messages = @single_room.message.order(created_at: :desc)

    @users_to_chat_with = User.all_except(current_user)
  end

  def create
    sender = current_user.email
    receiver = params[:user]
    # room_name = "ROOM: #{sender}-#{receiver}" # not required
    
    @room = Room.create(sender_email: sender, receiver_email: receiver)
  end

  private

  def avaiable_rooms = room_where_user_is_sender.or(room_where_user_is_receiver)

  def room_where_user_is_sender = Room.where(sender_email: current_user_email)

  def room_where_user_is_receiver = Room.where(receiver_email: current_user_email)

  def current_user_email = current_user.email
end
