class Room < ApplicationRecord
  has_many :messages
  has_many :users

  def you
    current_user.email
  end

  def contact
    return receiver_email if receiver_email != current_user.email

    return sender_email if sender_email != current_user.email
  end
end
