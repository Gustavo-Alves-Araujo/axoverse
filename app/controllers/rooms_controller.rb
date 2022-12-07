class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: %i[show]
  before_action :authenticate_room_users, only: %i[show]

  def index
    @room = Room.new

    @rooms = current_user.rooms.includes(:messages).order("messages.created_at asc").reverse

    @contacts = current_user.contacts.reverse
  end

  def show
    @message = Message.new

    @page = params[:page] || 1

    chablau = @room.messages

    @messages = Message.where(id: chablau.map(&:id)).order(created_at: :desc).page @page

    @new_room = Room.new

    @rooms = current_user.rooms.includes(:messages).order("messages.created_at asc").reverse

    @contacts = current_user.contacts.reverse

    render 'home/index'
  end

  def create
    sender_user = current_user
    receiver_user = User.find(params[:receiver_user_id])

    @room = Room.new

    @room.users.push(sender_user, receiver_user)

    if @room.save
      redirect_to room_path(@room)
    else
      flash[:alert] = @room.errors.full_messages

      redirect_to root_path
    end
  end

  private

  def current_user_email = current_user.email

  def authenticate_room_users
    set_room

    return if @room.users.include?(current_user)

    redirect_to root_path
  end

  def set_room
    @room = Room.find(params[:id])
  end
end
