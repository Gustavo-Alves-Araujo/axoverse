class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room

  # broadcasts_to :room

  after_create_commit do
    broadcast_prepend_to [room, "coringa"], target: "coringas", partial: "messages/novabola_message",
                                             locals: { message: self }
    # broadcast_prepend_to [inbox, :messages], target: ActionView::RecordIdentifier.dom_id(inbox, :messages)

    puts "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
  end
  # after_create_commit -> { broadcast_prepend_to "messages", partial: "messages/message", locals: { quote: self }, target: "messages" }
  # broadcasts_to ->(message) { "messages" }, inserts_by: :prepend
  # after_create_commit -> { broadcast_append_to room }
  # after_destroy_commit -> { broadcast_remove_to message}
end
