class Todo < ApplicationRecord
  validates :title, presence: true
  after_update_commit { broadcast_append_to 'todos' }
  
  enum status: { incomplete: 0, complete: 1 }
end
