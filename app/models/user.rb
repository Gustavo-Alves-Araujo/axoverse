class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  scope :all_except_contacts_of, ->(user) { where.not(id: user.id).reject { |item| user.contacts.include?(item) } }

  validates :name, :age, :biografia, presence: true, on: :update

  has_one_attached :profile_picture

  enum status: { not_completed: 0, completed: 1 }

  has_many :room_users, dependent: :destroy
  has_many :rooms, through: :room_users, dependent: :destroy
  has_many :messages, dependent: :destroy

  def contacts
    rooms.flat_map(&:users).reject(&current_user)
  end

  private

  def current_user = ->(users) { users == self }

  # def change_status
  #   return if self.valid?

  #   if valid?
  #     completed!
  #   end
  # end
end
