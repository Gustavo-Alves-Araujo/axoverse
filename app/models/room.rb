class Room < ApplicationRecord
  has_many :room_users, dependent: :destroy
  has_many :users, through: :room_users
  has_many :messages

  before_validation :update_list_of_users
  validate :required_users_validation
  validate :unique_users_validation

  # after_create_commit -> { broadcast_prepend_to "coringa", partial: "messages/novabola_message", locals: { quote: self }, target: "coringas" }

  broadcasts

  private

  # Numero permitido e necessário de usuários em uma sala
  REQUIRED_USERS = 2

  def required_users_validation
    errors.add(:users, "dessa sala deverão ser ao todo -> #{REQUIRED_USERS}") unless users.length == REQUIRED_USERS
  end

  def update_list_of_users
    self.users = users.uniq
  end

  def unique_users_validation
    return unless users.count < REQUIRED_USERS

    errors.add(:users, "já possuem uma sala aberta") if users.first.contacts.include?(users.second)
  end
end
