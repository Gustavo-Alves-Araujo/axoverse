class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :all_except_contacts_of, ->(user) { where.not(id: user.id).reject { |item| user.contacts.include?(item) } }

  has_one_attached :profile_picture

  has_many :room_users
  has_many :rooms, through: :room_users
  has_many :messages

  def contacts
    rooms.flat_map(&:users).reject(&current_user)
  end

  private

  def current_user = ->(users) { users == self }
end
