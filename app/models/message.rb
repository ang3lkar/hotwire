class Message < ApplicationRecord
  belongs_to :room
  # after_create_commit -> { broadcast_append_to room }
  # after_destroy_commit -> { broadcast_append_to room }
  # after_update_commit -> { broadcast_append_to room }
  broadcasts_to :room
end
