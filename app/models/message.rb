class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  broadcasts_to :room

  after_create_commit do
    broadcast_update_to [room, "last_message"], target: "last-message-#{room.id}", partial: "messages/novabola_message",
                                                locals: { message: self }
  end

  max_paginates_per 10
  # after_create_commit -> { broadcast_prepend_to "messages", partial: "messages/message", locals: { quote: self }, target: "messages" }
  # broadcasts_to ->(message) { "messages" }, inserts_by: :prepend
  # after_create_commit -> { broadcast_append_to room }
  # after_destroy_commit -> { broadcast_remove_to message}
end
