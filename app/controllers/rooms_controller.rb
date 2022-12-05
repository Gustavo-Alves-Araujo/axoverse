# frozen_string_literal: true

class RoomsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_room, only: %i[show]
  before_action :authenticate_room_users, only: %i[show]

  def index
    @room = Room.new

    @rooms = current_user.rooms

    @contacts = current_user.contacts
  end

  def list
    @room = Room.new

    @users_to_chat_with = User.all_except_contacts_of(current_user)
  end

  def show
    @message = Message.new

    @messages = @room.messages.order(created_at: :asc)

    @new_room = Room.new

    @rooms = current_user.rooms

    @contacts = current_user.contacts

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
      flash.now[:error] = 'Algo deu errado!'

      redirect_to list_rooms_path
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
